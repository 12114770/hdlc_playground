const int ledPin = 13;

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  if (Serial.available()) {
    int num = Serial.parseInt(); // Reads full number (e.g. 5, not char '5')

    if (num >= 1 && num <= 10) {
      for (int i = 0; i < num; i++) {
        digitalWrite(ledPin, HIGH);
        delay(300);
        digitalWrite(ledPin, LOW);
        delay(300);
      }
    }
  }
}