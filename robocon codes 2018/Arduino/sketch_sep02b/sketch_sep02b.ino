void setup() {
  // put your setup code here, to run once:
pinMode(10,OUTPUT);
pinMode(9,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
analogWrite(10,0);
analogWrite(5,0);
analogWrite(6,251);
analogWrite(9,255);//Forward
delay(650);
analogWrite(10,255);
analogWrite(5,255);
analogWrite(6,255);
analogWrite(9,255);
delay(1000);
}
