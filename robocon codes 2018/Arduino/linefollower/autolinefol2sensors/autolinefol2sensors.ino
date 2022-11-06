#include <math.h>
#define sva1
#define sva2
#define sva3
#define sva4
#define sva5
#define sva6
#define sva7
#define sva8
#define svb1
#define svb2
#define svb3
#define svb4
#define svb5
#define svb6
#define svb7
#define svb8
//mot1 is the motor in front, mot2-the one in the back left and mot3 the one in the back right
#define mot1inp1
#define mot1inp2
#define mot1pwm
#define mot2inp1
#define mot2inp2
#define mot2pwm
#define mot3inp1
#define mot3inp2
#define mot3pwm
#define kp 
#define kd
int sa1=0,sa2=0,sa3=0,sa4=0,sa5=0,sa6=0,sa7=0,sa8=0;//1st sensor array
int sb1=0,sb2=0,sb3=0,sb4=0,sb5=0,sb6=0,sb7=0,sb8=0;//2nd senspr array
//sa and sva correspond to the sensor on the left
int corr=0, last_corr=0;
void setup() {
  // put your setup code here, to run once:
pinMode ( sva1, INPUT);
pinMode ( sva2,  INPUT);
pinMode ( sva3, INPUT);
pinMode ( sva4,INPUT)
pinMode ( sva5, INPUT);
pinMode ( sva6, INPUT);
pinMode ( sva7, INPUT);
pinMode ( sva8, INPUT);
pinMode ( svb1, INPUT);
pinMode ( svb2,  INPUT);
pinMode ( svb3, INPUT);
pinMode ( svb4,INPUT)
pinMode ( svb5, INPUT);
pinMode ( svb6, INPUT);
pinMode ( svb7, INPUT);
pinMode ( svb8, INPUT);
}

int SensorVal()
  {
    sa1 = digitalRead (sva1)
    sa2 = digitalRead (sva2);
    sa3 = digitalRead (sva3);
    sa4 = digitalRead (sva4);
    sa5 = digitalRead (sva5);
    sa6 = digitalRead (sva6);
    sa7 = digitalRead (sva7);
    sa8 = digitalRead (sva8);
    sb1 = digitalRead (svb1)
    sb2 = digitalRead (svb2);
    sb3 = digitalRead (svb3);
    sb4 = digitalRead (svb4);
    sb5 = digitalRead (svb5);
    sb6 = digitalRead (svb6);
    sb7 = digitalRead (svb7);
    sb8 = digitalRead (svb8);
    
  }
 void Stop()
 {
  digitalWrite(mot1inp1,HIGH);
  digitalWrite(mot1inp2,HIGH);
  digitalWrite(mot1pwm,HIGH);
  digitalWrite(mot2inp1,HIGH);
  digitalWrite(mot2inp2,HIGH);
  digitalWrite(mot2pwm,HIGH);
  digitalWrite(mot3inp1,HIGH);
  digitalWrite(mot3inp2,HIGH);
  digitalWrite(mot3pwm,HIGH);
 }
 void motwrite_r(int p1,int p2,int pwm)
 {
  if (corr <0)
  {
    digitalWrite(p1, LOW);
    digitalWrite(p2, HIGH);
    analogWrite(pwm,abs(corr));
  }
  else if ( )
  {
    digitalWrite(p1, HIGH);
    digitalWrite(p2, LOW);
    analogWrite(pwm,abs(corr));
  }
  else
  {
    digitalWrite(p1, LOW);
    digitalWrite(p2, LOW);
    delay(10);
    analogWrite(pwm,abs(corr));
    //delay(50);
  }
 }
void motwrite_f(int p1,int p2,int pwm,int a=0)
{
  if(a==0)
    {
      
    }
}
void loop() {
  // put your main code here, to run repeatedly:
  SensorVal();
  int x= (4*sa1 + 3.5*sa2 + 3*sa3 + 2.5*sa4 +2*sa5 + 1.5*sa6+ 1*sa7 + 0.5*sa8- 0.5*sb1- 1*sb2- 1.5*sb3 - 2*sb4 - 2.5*sb5 - 3*sb6 - 3.5*sb7- 4*sb8);
  if(x!=0)
  { 
    //rotation
  Stop();
  corr=kp*x;
  int derivative=kd*(corr-last_corr);
  corr+=derivative;
  last_corr=corr;
  motwrite_r(mot1inp1,mot1inp2,mot1pwm);
  motwrite_r(mot2inp1,mot2inp2,mot2pwm);
  motwrite_r(mot3inp1,mot3inp2,mot3pwm);
  }
  else
  {
    //forward movement
    digitalWrite(mot1inp1,LOW);
    digitalWrite(mot1inp2,LOW);
    digitalWrite(mot1pwm,0);
    digitalWrite(mot2inp1,HIGH);
    digitalWrite(mot2inp2,LOW);
    digitalWrite(mot2pwm,110);
    digitalWrite(mot3inp1,LOW);
    digitalWrite(mot3inp2,HIGH);
    digitalWrite(mot3pwm,110);
  }
}
