#include <iostream>
#include <wiringPi.h>
#include <wiringSerial.h>

#define SERIAL_DEVICE "/dev/serial0" // UART on Raspberry Pi
#define HDLC_FLAG 0x7E
#define MAX_FRAME_SIZE 256

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
                    break;
                } else {
                    receiving = true; // Start flag received
                    idx = 0;
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

    uint8_t hdlc_data[] = {0x48, 0x44, 0x4C, 0x43}; // "HDLC" in hex

    std::cout << "Sending HDLC Frame..." << std::endl;
    send_hdlc_frame(fd, hdlc_data, sizeof(hdlc_data));

    std::cout << "Waiting for response..." << std::endl;
    receive_hdlc_frame(fd);

    serialClose(fd);
    printf("Serial port closed\n");
    return 0;

}
