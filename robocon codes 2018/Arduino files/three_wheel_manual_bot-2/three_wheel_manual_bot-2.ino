
#include<Math.h>

#include <PS3USB.h>

// Satisfy the IDE, which needs to see the include statment in the ino too.
#ifdef dobogusinclude
#include <spi4teensy3.h>
#endif
#include <SPI.h>

USB Usb;
/* You can create the instance of the class in two ways */
PS3USB PS3(&Usb); // This will just create the instance
//PS3USB PS3(&Usb,0x00,0x15,0x83,0x3D,0x0A,0x57); // This will also store the bluetooth address - this can be obtained from the dongle when running the sketch

bool printAngle;
uint8_t state = 0;

//Motor pins definitions
    //front right,front left,back right,back left
    //DIR1  DIR2  PWM
    int locoMotPins[][3] = {{28,26,2}, {34,36,3}, {44,42,4}}; //{front,back right,back left}
    int locoMotVals[] = {0, 0, 0};
    int locoRows, locoColumns;
    double pi=3.14159;

double checkendval(double pwm);
void setup() {
  Serial.begin(115200);
#if !defined(__MIPSEL__)
  while (!Serial); // Wait for serial port to connect - used on Leonardo, Teensy and other boards with built-in USB CDC serial connection
#endif
  if (Usb.Init() == -1) {
    Serial.print(F("\r\nOSC did not start"));
    while (1); //halt
  }
  Serial.print(F("\r\nPS3 USB Library Started"));

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
  if (val < -25)
  {
    digitalWrite(dir1, LOW);
    digitalWrite(dir2, HIGH);
    analogWrite(pwm, -val);
  }
  else if (val > 25)
  {
    digitalWrite(dir1, HIGH);
    digitalWrite(dir2, LOW);
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



void locomotion(double x,double y,double r)
{
 
  double val_motFp= (y*(0) -0.667*(x) - 0.333*(r));//map (-127,127)->(-254,254)
  double val_motLBp= ((-0.577*(y) + 0.333*(x) - 0.333*(r)));//map (-127,127)->(-254,254)
  double val_motRBp=  (0.577*(y) + 0.333*(x) - 0.333*(r));//map (-127,127)->(-254,254)
  
  /*val_motRBp = checkendval(val_motRBp);
  val_motLBp = checkendval(val_motLBp);
  val_motFp = checkendval(val_motFp);
  */
   val_motRBp=constrain(val_motRBp,-255,255);
   val_motLBp=constrain(val_motLBp,-255,255);
   val_motFp=constrain(val_motFp,-255,255);      
  
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

double checkendvalue(double pwm){
  if(pwm>250){
    pwm=250;
    }
  else if(pwm<-250){
    pwm=-250;
    }
  }


void loop() 
{
  Usb.Task();

  //  readPsValues();
  double lx = readPsValues(1);
  double ly = readPsValues(2);  
  lx=mapSquare2Circle(lx,ly,1); 
  ly=mapSquare2Circle(lx,ly,2);
  double rx = readPsValues(3);
  double ry = readPsValues(4);
  rx=mapSquare2Circle(rx,ry,1); 
  ry=mapSquare2Circle(rx,ry,2);

  
  
  locomotion(rx,ry,lx);
  

  // put your main code here, to run repeatedly:

}
