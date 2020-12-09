int greenButton = 2;
int greenLed = 3;
int redButton = 4;
int redLed = 5;
int redState = true;
int redButtonState = LOW;

void setup() {
  // set pin modes
//  pinMode(redLed, OUTPUT);
 pinMode(redButton, INPUT);
//  Serial.begin(9600);
  pinMode(greenLed, OUTPUT);
  pinMode(greenButton, INPUT);
  Serial.begin(9600);
}


void loop() {
//  delay(1);
//  if(Serial.available()>0){
    
//    char inByte=Serial.read();
    int greenState = digitalRead(greenButton);
//    delay(1);
    digitalWrite(greenLed, greenState);
   if(digitalRead ( greenButton )== HIGH) {
    Serial.write(1);  
 // Serial.println(5);
   } 
   else if ( digitalRead( redButton) == HIGH){
    Serial.write(2);
  //Serial.println(3);
   }
}
