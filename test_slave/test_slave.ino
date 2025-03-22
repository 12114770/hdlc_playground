#include <SPI.h>

volatile uint8_t receivedData[32];
volatile size_t dataIndex = 0;
volatile bool frameReceived = false;

void setup() {
    Serial.begin(115200);

    // Configure SPI as Slave
    SPI.begin();
    pinMode(MISO, OUTPUT);  // SPI Slave must set MISO as output
    pinMode(MOSI, INPUT);   // MOSI as input
    pinMode(SCK, INPUT);    // SCK as input
    pinMode(SS, INPUT_PULLUP); // CS should be input, pulled high

    Serial.println("Arduino SPI Slave Ready...");
}

void loop() {
    if (digitalRead(SS) == LOW) {  // Check if SS (CS) is active (LOW)
        receivedData[dataIndex] = SPI.transfer(0xAA); // Read SPI data and send 0xAA back

        Serial.print("Received Byte: 0x");
        Serial.println(receivedData[dataIndex], HEX);  // Debugging output
        
        if (receivedData[dataIndex] != 0x00) {  // Ignore empty data
            frameReceived = true;
        }

        dataIndex++;

        // Reset index if too many bytes received
        if (dataIndex >= sizeof(receivedData)) {
            dataIndex = 0;
        }
    }
}
