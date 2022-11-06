void setup() {
  Serial.begin(9600);
  pinMode(3 , OUTPUT );
  pinMode(2 , INPUT);
  
}

void loop() {
  digitalWrite( 3 , LOW);
  delayMicroseconds(2);
   digitalWrite( 3 , HIGH);
  delayMicroseconds(10);
  digitalWrite( 3 , LOW);

 Serial.println( (pulseIn( 2 , HIGH)) / 58.2 ) ;

 delay(500);
 }
