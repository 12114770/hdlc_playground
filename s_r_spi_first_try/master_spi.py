import spidev
import time

# Initialize SPI
spi = spidev.SpiDev()
spi.open(0, 0)              # Use SPI0
spi.max_speed_hz = 100000   # 100 kHz
spi.mode = 0                # SPI mode 0

# Test data to send
test_bytes = [0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07]

try:
    print("Starting SPI loopback test...\n")
    for byte in test_bytes:
        to_send = [byte]
        received = spi.xfer2(to_send)
        print(f"Sent: 0x{byte:02X}   Received: 0x{received[0]:02X}")
        time.sleep(0.2)  # Wait 1s so LEDs on FPGA are visible

finally:
    spi.close()
    print("\nSPI test finished.")