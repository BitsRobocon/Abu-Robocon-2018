#include <math.h>
//mot1 is the motor in front, mot2-the one in the back left and mot3 the one in the back right
#define mot1inp1 26
#define mot1inp2 28
#define mot1pwm  2
#define mot2inp1 34
#define mot2inp2 36
#define mot2pwm 3
#define mot3inp1 42 
#define mot3inp2 44
#define mot3pwm 4
int kp=5,kd=2;
void chval(int a)
{
  if(a==1)
    a=0;
  else
    a=1;
}
int x=0;
int integral=0,sum=0;//1st sensor array
int corr=0, last_corr=0;
int sva[8]={2,3,4,5,6,7,8,9};
int sa[8]={0};
void setup() {
  // put your setup code here, to run once:
  for(int i=0;i<8;i++)
      pinMode ( sva[i], INPUT);

Serial.begin(9600);
}

void sum_calc(int a)
  {
    if(a==1)
      sum++;
  }  
void SensorVal()
  {
  for(int i=0;i<=7;i++)
      {
        sa[i]=digitalRead(sva[i]);
        sum_calc(sa[i]);
      }
  
  }
 void motwrite_r(int p1,int p2,int pwm)
 {
  if (corr <0)
  {
    digitalWrite(p1, LOW);
    digitalWrite(p2, HIGH);
    analogWrite(pwm,abs(70+corr));
  }
  else
  {
    digitalWrite(p1, HIGH);
    digitalWrite(p2, LOW);
    analogWrite(pwm,abs(70+corr));
  }

 }
void loop() {
  int p=0;
  sum=0;
  SensorVal();
  // put your main code here, to run repeatedly:
// Serial.println(sum);
for(int k=0;k<=7;k++)
  {
    if(sa[k]==1)
    {
      p=1;
      break;
    }
  }
  if(p==1)
     x= (4*sa[0] + 3*sa[1] + 2*sa[2] + 1*sa[3] -1*sa[4] - 2*sa[5]- 3*sa[6] - 4*sa[7])/sum; 
    //weighted sum
/*for(int i=0;i<=7;i++)
 {
  Serial.print(sa[i]);
  Serial.print('\t');
 }
  Serial.println(x);
  delay(500);*/
   corr=kp*x;
  corr+=integral;
  int derivative=kd*(corr-last_corr);
  corr+=derivative;
  if(derivative==0)
    integral=0;
  integral+=derivative;
  last_corr=corr;
    //forward movement
    if(corr>0)
    {
    digitalWrite(mot1inp1,HIGH);
    digitalWrite(mot1inp2,LOW);
    digitalWrite(mot1pwm,corr);
    }
    else
    {
    digitalWrite(mot1inp1,LOW);
    digitalWrite(mot1inp2,HIGH);
    digitalWrite(mot1pwm,corr);
    }
    digitalWrite(mot2inp1,HIGH);
    digitalWrite(mot2inp2,LOW);
    digitalWrite(mot2pwm,70+corr);
    digitalWrite(mot3inp1,LOW);
    digitalWrite(mot3inp2,HIGH);
    digitalWrite(mot3pwm,70+corr);
}
