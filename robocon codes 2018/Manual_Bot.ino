
#include<Math.h>

#include <PS3USB.h>
#include<Encoder.h>
#include<Servo.h>
// Satisfy the IDE, which needs to see the include statment in the ino too.
#ifdef dobogusinclude
#include <spi4teensy3.h>
#endif
#include <SPI.h>

USB Usb;
/* You can create the instance of the class in two ways */
PS3USB PS3(&Usb); // This will just create the instance
#include <SPI.h>
#define pwm1 8
#define pwm2 3
#define motor1_left 38
#define motor1_right 39
#define motor2_left 48
#define motor2_right 49
#define solenoid 30
//PS3USB PS3(&Usb,0x00,0x15,0x83,0x3D,0x0A,0x57); // This will also store the bluetooth address - this can be obtained from the dongle when running the sketch
int rackswitch=1;
int solswitch=0,pos=0;
bool printAngle;
uint8_t state = 0;
int left_val,right_val,pwmloco,loadpos=0;
//Motor pins definitions
    //front right,front left,back right,back left
    //DIR1  DIR2  PWM
    int locoMotPins[][3] = {{24,25,5}, {44,45,4}, {26,27,6}}; //{front,back right,back left}
    int locoMotVals[] = {0, 0, 0};
    int locoRows, locoColumns;
    double pi=3.14159;
long newPosition,lastPosition,newPositionb,lastPositionb,oldPosition=0;
double checkendval(double pwm);
Encoder rack_enc(40,41);
Encoder load_enc(42,43);
Servo loadservo;
void setup() {
   Serial.begin(9600);
#if !defined(__MIPSEL__)
  while (!Serial); // Wait for serial port to connect - used on Leonardo, Teensy and other boards with built-in USB CDC serial connection
#endif
  if (Usb.Init() == -1) {
    Serial.print(F("\r\nOSC did not start"));
    while (1); //halt
  }
  Serial.print(F("\r\nPS3 USB Library Started"));
  loadservo.attach(7);
  pinMode(pwm1,OUTPUT);
  pinMode(pwm2,OUTPUT);
  pinMode(motor1_left,OUTPUT);
  pinMode(motor1_right,OUTPUT);
  pinMode(motor2_left,OUTPUT);
  pinMode(motor2_right,OUTPUT);
  pinMode(solenoid,OUTPUT);
  pinMode(24,OUTPUT);
  pinMode(26,OUTPUT);


  locoColumns = (sizeof(locoMotPins[0]) / sizeof(int));
  locoRows = (sizeof(locoMotPins) / sizeof(int)) / (locoColumns);
    for (int i = 0; i < 3; i++)
    {
      for (int j = 0; j < 3; j++)
      {
        pinMode(locoMotPins[i][j], OUTPUT);
        digitalWrite(locoMotPins[i][j], LOW);
      }
    }
}



double readPsValues(int code)
{
  double lx=0,ly=0,rx=0,ry=0;
 

  
    lx = (PS3.getAnalogHat(LeftHatX) - 127);
    ly = -(PS3.getAnalogHat(LeftHatY) - 127);
    rx = (PS3.getAnalogHat(RightHatX) - 127);
    ry = -(PS3.getAnalogHat(RightHatY) - 127);
   
  switch(code)
  {
    case 1: return lx;
    case 2: return ly;
    case 3: return rx;
    case 4: return ry;
   
  }
}


void motorWrite(int dir1, int dir2, int pwm, int val)
{
  if (val < -50)
  {
    digitalWrite(dir1, LOW);
    digitalWrite(dir2, HIGH);
    int p=val/10;
    for(int i=0;i>val;i=i+p)
    {
      if(i<-50)
      {
        analogWrite(pwm, -i);
        delay(2);
      }
    }
    analogWrite(pwm, -val);
  }
  else if (val > 50)
  {
    digitalWrite(dir1, HIGH);
    digitalWrite(dir2, LOW);
    int p=val/10;
    for(int i=0;i<val;i=i+p)
    {
      if(i>50)
      {
        analogWrite(pwm, i);
        delay(2);
      }
    }    
    analogWrite(pwm, val);
  }
  else
  {
    digitalWrite(dir1, LOW);
    digitalWrite(dir2, LOW);
    delay(10);
    analogWrite(pwm, 0);
    //delay(50);
  }
}

double mapSquare2Circle(double x, double y,int code)
{
  double slope = 10000;
  if ((x > -10 && x < 10))
  {
    slope = 10000;
  }
  else if(x!=0 && y!=0)
  {
    slope = y / x;
   
    double r = max(abs(y), abs(x));
    x = (abs(x) / x) * sqrt(pow(r, 2) / (1 + pow(slope, 2)));
    y = (abs(y) / y) * abs(slope) * sqrt(pow(r, 2) / (1 + pow(slope, 2)));
  }
  if(code==1)
    return x;
  else if(code==2)
    return y;
}

double checkendvalue(double pwm){
  if(pwm>250){
    pwm=250;
    }
  else if(pwm<-250){
    pwm=-250;
    }
  }

void locomotion(double x,double y,double r,int pwmloco)
{
 
 /*
    double val_motFp=1.5*(pwmloco)*(y*(0) -0.667*(x) - 0.333*(-r));//map (-127,127)->(-254,254)
  double val_motLBp=1*0.8*(pwmloco)*((-0.577*(y) + 0.333*(x) - 0.333*(-r)));//map (-127,127)->(-254,254)
  double val_motRBp=0.73*1.5*(pwmloco)*(0.577*(y) + 0.333*(x) - 0.333*(-r));//map (-127,127)->(-254,254)*/
  
 
    double val_motFp=1.5*(pwmloco)*(y*(0) -0.667*(x) - 0.333*(-r));//map (-127,127)->(-254,254)
  double val_motLBp=1*0.8*(pwmloco)*((-0.577*(y) + 0.333*(x) - 0.333*(-r)));//map (-127,127)->(-254,254)
  double val_motRBp=0.73*1.5*(pwmloco)*(0.577*(y) + 0.333*(x) - 0.333*(-r));//map (-127,127)->(-254,254)
 /* val_motRBp = checkendval(val_motRBp);
  val_motLBp = checkendval(val_motLBp);
  val_motFp = checkendval(val_motFp);*/
  
   val_motRBp=constrain(val_motRBp,-250,250);
   val_motLBp=constrain(val_motLBp,-250,250);
   val_motFp=constrain(val_motFp,-250,250);      
  
  locoMotVals[0] = val_motFp;
  locoMotVals[1] = val_motRBp;
  locoMotVals[2] = val_motLBp;
  

  for (int i = 0; i < locoRows; i++)
  {
    
    Serial.print(locoMotVals[i]);
   // Serial.print(mapY);
  //  Serial.print("\t");
  //  Serial.print(mapR);
  //  Serial.print("\t");
    Serial.print("\t");
    motorWrite(locoMotPins[i][0], locoMotPins[i][1], locoMotPins[i][2], locoMotVals[i]);
  }
  Serial.print("\n");
}




void loop() 
{
  Usb.Task();

  
  
    
  // put your main code here, to run repeatedly:
  if (PS3.PS3Connected || PS3.PS3NavigationConnected)
   { 
    
      
     
   
    if(PS3.getButtonClick(CROSS))
    { Serial.print(F("\r\nLoco"));
      rackswitch=2;
    }
    if(PS3.getButtonClick(UP)){
      pwmloco=3;
      Serial.print(F("\r\nHigher_PWM  "));
    }

    if(PS3.getButtonClick(DOWN)){
      pwmloco=1.5;
      Serial.print(F("\r\nLower_PWM  "));
    }
      
    if(PS3.getButtonClick(TRIANGLE))
    {
      Serial.print(F("\r\nRack"));
      rackswitch=0;
     }
    if(PS3.getButtonClick(SQUARE))
    {
      Serial.print(F("\r\nLoading"));
      rackswitch=1;
     }
   
    //readPsValues();
      if (pwmloco==3 && rackswitch==2 ) {
      Serial.print(F("\r\nHigher_PWM"));
      
      
     double lx = readPsValues(1);
     double ly = readPsValues(2);  
     lx=mapSquare2Circle(lx,ly,1); 
     ly=mapSquare2Circle(lx,ly,2);
     double rx = readPsValues(3);
     double ry = readPsValues(4);
     rx=mapSquare2Circle(rx,ry,1); 
     ry=mapSquare2Circle(rx,ry,2);
     locomotion(rx,ry,lx,pwmloco);
      } 
      
      if (pwmloco==1 && rackswitch==2) {
      Serial.print(F("\r\nLower_PWM"));
      
      
     double lx = readPsValues(1);
     double ly = readPsValues(2);  
     lx=mapSquare2Circle(lx,ly,1); 
     ly=mapSquare2Circle(lx,ly,2);
     double rx = readPsValues(3);
     double ry = readPsValues(4);
     rx=mapSquare2Circle(rx,ry,1); 
     ry=mapSquare2Circle(rx,ry,2);
     locomotion(rx,ry,lx,pwmloco);
      
      }

    if (PS3.getButtonClick(LEFT) && rackswitch==0) {
     // long newPosition = myenc.read();// 1 cm =492 counts
      //Serial.print(F("\r\nNext_Position_Left"));
      long oldPosition  = 1;
      
       while(1){
        newPosition = rack_enc.read()-lastPosition;
        Serial.println(newPosition);  
        analogWrite(pwm1,255);
        digitalWrite(motor1_left,LOW);
        digitalWrite(motor1_right,HIGH);  
        if(newPosition>15)
         break;
      }
      lastPosition=rack_enc.read();
    }
     
    if ((PS3.getButtonClick(RIGHT)) && rackswitch==0) {
     // long newPosition = rack_enc.read();// 1 cm =492 counts
      //Serial.print(F("\r\nNext_Position_Right"));
      
      
      while(1){
        newPosition = rack_enc.read()-lastPosition;
        Serial.println(newPosition);  
        analogWrite(pwm1,255);
        digitalWrite(motor1_left,HIGH);
        digitalWrite(motor1_right,LOW);  
        if(newPosition>15)
         break;
      }
      lastPosition=rack_enc.read();
    }
     
      
    if (PS3.getAnalogButton(L2) && rackswitch==0) {
     // long newPosition = myenc.read();// 1 cm =492 counts
      //Serial.println(newPosition);
      Serial.print(F("\r\nL2: "));
      left_val=PS3.getAnalogButton(L2);
      left_val=map(left_val,0,255,0,255);
      analogWrite(pwm1,left_val);
      digitalWrite(motor1_left,HIGH);
      digitalWrite(motor1_right,LOW);
      Serial.println(left_val);
    }

     if (PS3.getAnalogButton(R2) && rackswitch==0)
     {//long newPosition = myenc.read();// 1 cm =492 counts
      //Serial.println(newPosition);
      right_val=PS3.getAnalogButton(R2);
      Serial.print(F("\r\nR2: "));
      right_val=map(right_val,0,255,0,255);
      analogWrite(pwm1,right_val);
      digitalWrite(motor1_left,LOW);
      digitalWrite(motor1_right,HIGH);
      Serial.println(right_val);
     }
     else
     {
      analogWrite(pwm1,0);}
     }

   
     
    if (PS3.getAnalogButton(L2) && rackswitch==1)
    {
      Serial.print(F("\r\nL3: "));
      left_val=PS3.getAnalogButton(L2);
      left_val=map(left_val,0,255,0,255);
      analogWrite(pwm2,left_val);
      digitalWrite(motor2_left,HIGH);
      digitalWrite(motor2_right,LOW);
      Serial.print(left_val);
     }

     if (PS3.getAnalogButton(R2) && rackswitch==1) 
     {
      Serial.print(F("\r\nR3: "));
      right_val=PS3.getAnalogButton(R2);
      right_val=map(right_val,0,255,0,255);
      analogWrite(pwm2,right_val);
      digitalWrite(motor2_left,LOW);
      digitalWrite(motor2_right,HIGH);
      Serial.print(right_val);
     }
     else
     {
      analogWrite(pwm2,0);}
    
     if(PS3.getAnalogButton(CIRCLE))
     {Serial.print(F("\r\nservo: "));
      for (pos = 70; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
        loadservo.write(pos); 
        if(PS3.getAnalogButton(R1)){break;}// tell servo to go to position in variable 'pos'
        delay(5);                       // waits 15ms for the servo to reach the position
      }
      for (pos = 180; pos >= 70; pos -= 1) { // goes from 180 degrees to 0 degrees
        loadservo.write(pos);
        if(PS3.getAnalogButton(R1)){break;}// tell servo to go to position in variable 'pos'
        delay(5);                       // waits 15ms for the servo to reach the position
      }
     }

     if (PS3.getButtonClick(L1))
    {     
      Serial.print(F("\r\nOpen"));
      solswitch=1;
    }
    if (PS3.getButtonClick(R1))
    {     
      Serial.print(F("\r\nClose"));
      solswitch=0;
    }
      if(solswitch==1)
      {digitalWrite(solenoid,HIGH);
      
      }
      if(solswitch==0)
      {digitalWrite(solenoid,LOW);
     
      }  
    
    
    
}
   
