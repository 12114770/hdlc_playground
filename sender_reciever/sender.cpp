#include <iostream>
#include <wiringPi.h>
#include <wiringSerial.h>

#define SERIAL_DEVICE "/dev/serial0" // UART on Raspberry Pi
#define HDLC_FLAG 0x7E

// Function to send HDLC frame
void send_hdlc_frame(int fd, const uint8_t *data, size_t len) {
    serialPutchar(fd, HDLC_FLAG); // Start flag

    for (size_t i = 0; i < len; i++) {
        if (data[i] == HDLC_FLAG) {
            serialPutchar(fd, 0x7D); // Escape character
            serialPutchar(fd, data[i] ^ 0x20); // Bit-stuffing
        } else {
            serialPutchar(fd, data[i]);
        }
    }

    serialPutchar(fd, HDLC_FLAG); // End flag
}

int main() {
    if (wiringPiSetup() == -1) {
        std::cerr << "WiringPi initialization failed!" << std::endl;
        return -1;
    }

    int fd = serialOpen(SERIAL_DEVICE, 115200);
    if (fd < 0) {
        std::cerr << "Failed to open serial port!" << std::endl;
        return -1;
    }

    uint8_t hdlc_data[] = {0x48, 0x44, 0x4C, 0x43}; // "HDLC" in hex

    while (true) {
        std::cout << "Sending HDLC Frame..." << std::endl;
        send_hdlc_frame(fd, hdlc_data, sizeof(hdlc_data));
        delay(2000); // Send every 2 seconds
    }

    serialClose(fd);
    return 0;
}
