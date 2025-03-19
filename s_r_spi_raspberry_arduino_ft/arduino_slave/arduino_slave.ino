#include <SPI.h>

#define FLAG  0x7E  // HDLC Frame delimiter
#define ESCAPE 0x7D  // Escape character

volatile uint8_t receivedData[32];
volatile size_t dataIndex = 0;
volatile bool frameReceived = false;

// CRC Calculation
uint16_t calculate_crc(const uint8_t *data, size_t length) {
    uint16_t crc = 0xFFFF;
    for (size_t i = 0; i < length; i++) {
        crc ^= (uint16_t)data[i] << 8;
        for (uint8_t j = 0; j < 8; j++) {
            if (crc & 0x8000) crc = (crc << 1) ^ 0x1021;
            else crc <<= 1;
        }
    }
    return crc;
}

// HDLC Decode Function
String hdlc_decode(uint8_t *frame, size_t length) {
    if (frame[0] != FLAG || frame[length - 1] != FLAG) return "Invalid Frame";
    
    uint8_t destuffed_data[length - 3];
    size_t index = 0;

    for (size_t i = 1; i < length - 3; i++) {
        if (frame[i] == ESCAPE) {
            destuffed_data[index++] = frame[i + 1] ^ 0x20;
            i++;
        } else {
            destuffed_data[index++] = frame[i];
        }
    }

    // Verify CRC
    uint16_t crc_received = (frame[length - 3] << 8) | frame[length - 2];
    if (calculate_crc(destuffed_data, index) != crc_received) {
        return "CRC Error!";
    }

    return String((char *)destuffed_data);
}

void spi_receive() {
    uint8_t receivedByte = SPI.transfer(0x00);

    // Debugging: Print every received byte
    Serial.print("Received Byte: 0x");
    Serial.println(receivedByte, HEX);

    receivedData[dataIndex] = receivedByte;

    // Detect end of frame
    if (receivedByte == FLAG && dataIndex > 0) {
        frameReceived = true;
    } else {
        dataIndex++;
    }
}

void setup() {
    Serial.begin(115200);

    // Set SPI to Slave mode
    SPI.begin();
    pinMode(MISO, OUTPUT);  // Ensure MISO is output for Slave mode
    pinMode(SS, INPUT_PULLUP);  // CS (SS) must be pulled HIGH

    SPI.usingInterrupt(digitalPinToInterrupt(SS));  
    attachInterrupt(digitalPinToInterrupt(SS), spi_receive, FALLING);
}


void loop() {
    if (frameReceived) {
        String decodedMessage = hdlc_decode((uint8_t *)receivedData, dataIndex + 1);
        Serial.println("Received: " + decodedMessage);
        
        // Reset buffer
        dataIndex = 0;
        frameReceived = false;
    }
}

