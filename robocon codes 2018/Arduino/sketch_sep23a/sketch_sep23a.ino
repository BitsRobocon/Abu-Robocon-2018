void setup() {
  // put your setup code here, to run once:
#define sv1
#define sv2
#define sv3
#define sv4
#define sv5
#define sv6
#define sv7
#define sv8
  
pinMode ( sv1, INPUT);
pinMode ( sv2,  INPUT);
pinMode ( sv3, INPUT);
pinMode (  sv4,INPUT)
pinMode (  sv5, INPUT);
pinMode ( sv6, INPUT);
pinMode ( sv7, INPUT);
pinMode ( sv8, INPUT);

void loop() {
  // put your main code here, to run repeatedly:
int sa = digitalRead (sv1)
int sb = digitalRead (sv2);
int sc = digitalRead (sv3);
int sd = digitalRead (sv4);
int se = digitalRead (sv5);
int sf = digitalRead (sv6);
int sg = digitalRead (sv7);
int sh = digitalRead (sv8);


int x= (4*sa + 3*sb + 2*sc + sd - se - 2*sf- 3*sg - 4*sh);
int k = 6.35;
int disp = k*x;









}
