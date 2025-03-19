#include <boost/crc.hpp>
#include <cstring>

int main() {
  boost::crc_32_type crc;
  char const *data = "Hello, world!";
  crc.process_bytes(data, std::strlen(data));
  return crc.checksum() == 0xEBE6C6E6u ? 0 : 1;
}