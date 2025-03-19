#include <iostream>
#include <wiringPi.h>
#include <wiringSerial.h>

#define SERIAL_DEVICE "/dev/serial0" // UART on Raspberry Pi
#define HDLC_FLAG 0x7E
#define MAX_FRAME_SIZE 256

// Function to receive an HDLC frame
void receive_hdlc_frame(int fd) {
    uint8_t buffer[MAX_FRAME_SIZE];
    int idx = 0;
    bool receiving = false;

    while (true) {
        if (serialDataAvail(fd)) {
            uint8_t byte = serialGetchar(fd);
            if (byte == HDLC_FLAG) {
                if (receiving) { // End flag received
                    std::cout << "Received HDLC Frame: ";
                    for (int i = 0; i < idx; i++) {
                        std::cout << std::hex << (int)buffer[i] << " ";
                    }
                    std::cout << std::dec << std::endl;
                    idx = 0;
                    receiving = false;
                } else {
                    receiving = true; // Start flag received
                }
            } else if (receiving && idx < MAX_FRAME_SIZE) {
                buffer[idx++] = byte;
            }
        }
    }
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

    std::cout << "Waiting for incoming HDLC frames..." << std::endl;
    while (true) {
        receive_hdlc_frame(fd);
    }

    serialClose(fd);
    return 0;
}

