void setup() {
  // put your setup code here, to run once:
int SensorValue=9;
pinMode(SensorValue,INPUT);
pinMode(13,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
int val=0;
val=digitalRead(9);
if(val==HIGH)
{
 digitalWrite(13,HIGH);
delay(1000);
}
else
{
  digitalWrite(13,LOW);
delay(1000);
}
}
