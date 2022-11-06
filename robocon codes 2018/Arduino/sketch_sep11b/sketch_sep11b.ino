void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(8 , OUTPUT);
  pinMode(9 , OUTPUT);
  pinMode(10 , INPUT);
  pinMode(11 , INPUT);
  pinMode(12, 
  

}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(8, HIGH);
digitalWrite(9, LOW);
Serial.println(10);
Serial.println(11);
delay(10000);
digitalWrite(8, HIGH);
digitalWrite(9, HIGH);
Serial.println(10);
Serial.println(11);
delay(5000);
digitalWrite(8, LOW);
digitalWrite(9, HIGH);
Serial.println(10);
Serial.println(11);
delay(10000);
digitalWrite(8, HIGH);
digitalWrite(9, HIGH);
Serial.println(10);
Serial.println(11);
delay(5000);
}
