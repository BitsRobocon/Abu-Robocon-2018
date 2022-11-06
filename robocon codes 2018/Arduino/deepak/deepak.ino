#define trig1 6
#define echo1 7
#define trig2 3
#define echo2 2
#define r1 11
#define r2 10
#define l1 9
#define l2 8

void setup() {
Serial.begin(9600);
  
  pinMode(trig1 , OUTPUT);
  pinMode(trig2 , OUTPUT);
  pinMode(echo1 , INPUT);
  pinMode(echo2 , INPUT);
  pinMode(l1 , OUTPUT);
  pinMode(l2 , OUTPUT);
  pinMode(r1 , OUTPUT);
  pinMode(r2 , OUTPUT);
  
}

long duration1 ;
long duration2 ;
long distance1 ;
long distance2 ;


void loop() {
  digitalWrite(trig1 , LOW);
  digitalWrite(trig2 , LOW);
  delayMicroseconds(2);
  digitalWrite(trig1 , HIGH);
  digitalWrite(trig2 , HIGH);
  delayMicroseconds(10);
  digitalWrite(trig1 , LOW);
  digitalWrite(trig2 , LOW);

  duration1 = pulseIn(echo1,HIGH);
  duration2 = pulseIn(echo2,HIGH);

  distance1 = duration1 / 58.2 ;
  distance2 = duration2 / 58.2 ;

/*  if( distance1 >= 6 &&  distance2 <= 12 && distance2 >= 5 )
  {
    digitalWrite( l1 , HIGH);
    digitalWrite( l2 , LOW);
    digitalWrite( r1 , HIGH);
    digitalWrite( r2 , LOW);
  }

  else if( distance1 <= 6 )
  {
    digitalWrite( l1 , HIGH);
    digitalWrite( l2 , LOW);
    digitalWrite( r1 , LOW);
    digitalWrite( r2 , LOW);
  }
  else if( distance1 >= 6 &&  distance2 >= 12 )
  {
    digitalWrite( l1 , LOW);
    digitalWrite( l2 , LOW);
    digitalWrite( r1 , HIGH);
    digitalWrite( r2 , LOW);
  }
  else if( distance1 >= 6 && distance2 <= 5 )
  {
    digitalWrite( l1 , HIGH);
    digitalWrite( l2 , LOW);
    digitalWrite( r1 , LOW);
    digitalWrite( r2 , LOW);
  }

  else
  {
    digitalWrite( l1 , HIGH);
    digitalWrite( l2 , LOW);
    digitalWrite( r1 , HIGH);
    digitalWrite( r2 , LOW);
  }
*/


Serial.println(distance2);
  
}
