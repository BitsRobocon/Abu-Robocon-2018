# define trig 12
# define echo 11
# define op1 5
# define op2 10
# define op3 9
# define op4 6

void setup() {
  // put your setup code here, to run once:
pinMode(trig,OUTPUT);
pinMode(echo,INPUT);
pinMode(op1,OUTPUT);
pinMode(op2,OUTPUT);
pinMode(op3,OUTPUT);
pinMode(op4,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(trig,LOW);
delayMicroseconds(10);
digitalWrite(trig,HIGH);
delayMicroseconds(10);
digitalWrite(trig,LOW);
 long dur,dist;
 dur=pulseIn(echo,HIGH);
 dist=(dur/2)/29.4;
 if(dist<10)
    {
      digitalWrite(op1,LOW);
      digitalWrite(op2,LOW);
      digitalWrite(op3,LOW);
      digitalWrite(op4,LOW);
    }
 else
    {
      digitalWrite(op2,HIGH);
      digitalWrite(op1,LOW);
      digitalWrite(op4,HIGH);
      digitalWrite(op3,LOW);
    }
    
}
