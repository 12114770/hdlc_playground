#include <iostream>
#include <fcntl.h>
#include <linux/spi/spidev.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <vector>
#include <boost/crc.hpp>

#define SPI_DEVICE "/dev/spidev10.0"
#define SPI_SPEED 100000  // 500 kHz
#define FLAG  0x7E  // HDLC Frame delimiter
#define ESCAPE 0x7D  // Escape character

// Function to calculate CRC-16
uint16_t calculate_crc(const std::vector<uint8_t>& data) {
    boost::crc_ccitt_type crc;
    crc.process_bytes(data.data(), data.size());
    return crc.checksum();
}

// HDLC Encode function
std::vector<uint8_t> hdlc_encode(const std::vector<uint8_t>& data) {
    std::vector<uint8_t> encoded;
    encoded.push_back(FLAG);  // Start flag

    // Byte stuffing
    for (uint8_t byte : data) {
        if (byte == FLAG || byte == ESCAPE) {
            encoded.push_back(ESCAPE);
            encoded.push_back(byte ^ 0x20);
        } else {
            encoded.push_back(byte);
        }
    }

    // Append CRC-16
    uint16_t crc = calculate_crc(data);
    encoded.push_back(crc >> 8);
    encoded.push_back(crc & 0xFF);

    encoded.push_back(FLAG);  // End flag
    return encoded;
}

// SPI Setup
int spi_setup() {
    int spi_fd = open(SPI_DEVICE, O_RDWR);
    if (spi_fd < 0) {
        std::cerr << "Error opening SPI device" << std::endl;
        return -1;
    }
    uint32_t speed = SPI_SPEED;
    ioctl(spi_fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
    return spi_fd;
}

// Send HDLC frame via SPI
void spi_send(int spi_fd, const std::vector<uint8_t>& frame) {
    write(spi_fd, frame.data(), frame.size());
}

int main() {
    int spi_fd = spi_setup();
    if (spi_fd < 0) return -1;

    std::string message = "Hello Arduino!";
    std::vector<uint8_t> data(message.begin(), message.end());

    std::vector<uint8_t> frame = hdlc_encode(data);
    std::cout << "Sending HDLC frame: ";
    for (uint8_t byte : frame) std::cout << std::hex << (int)byte << " ";
    std::cout << std::endl;

    spi_send(spi_fd, frame);
    
    close(spi_fd);
    return 0;
}