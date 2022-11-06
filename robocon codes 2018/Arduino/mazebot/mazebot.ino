# define trig 10
# define echo 11
# define op1 2
# define op2 3
# define op3 4
# define op4 5
# define ir1 6

void setup() {
  // put your setup code here, to run once:
pinMode(trig,OUTPUT);
pinMode(echo,INPUT);
pinMode(op1,OUTPUT);
pinMode(op2,OUTPUT);
pinMode(op3,OUTPUT);
pinMode(op4,OUTPUT);
}

long ultrasound()
{
digitalWrite(trig,LOW);
delayMicroseconds(2);
digitalWrite(trig,HIGH);
delayMicroseconds(10);
digitalWrite(trig,LOW);
long dur =pulseIn(echo,HIGH);
long dist=(dur/2)/29.4;
 return dist;
 
}

int irsensor(int pin)
{
  int val=digitalRead(pin);
  return val;
}

void loop() {
  // put your main code here, to run repeatedly:
   long dist=ultrasound();
 if((dist<5)&&(irsensor(ir1)==HIGH))
    {
      digitalWrite(op1,LOW);
      digitalWrite(op2,HIGH);
      digitalWrite(op3,LOW);
      analogWrite(op4,206);
    }
 else if(dist>5)
    {
      digitalWrite(op1,LOW);
      digitalWrite(op2,LOW);
      digitalWrite(op3,LOW);
      digitalWrite(op4,206);
    }
else if(irsensor(ir1)!=HIGH)
    {
      digitalWrite(op1,LOW);
      digitalWrite(op4,LOW);
      digitalWrite(op3,LOW);
      digitalWrite(op2,HIGH);
    }
}
