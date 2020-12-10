int greenButton = 2;
int greenLed = 3;
int redButton = 4;
int redLed = 5;
int redState = 1;
int redButtonState = LOW;
int greenState = 1;
void setup() {
//  pinMode(redLed, OUTPUT);
 pinMode(redButton, INPUT);
//  Serial.begin(9600);
  pinMode(greenLed, OUTPUT);
  pinMode(greenButton, INPUT);
  Serial.begin(9600);
  Serial.write(0);
}
void loop() {
 // Serial.println( digitalRead(2));
  if(Serial.available()>0){
    Serial.read();
    
   if (digitalRead(2) == HIGH){
    Serial.write(1);
    delay (1000);
   } else if (redState == digitalRead(4)) {
    Serial.write(2);
    delay (1000);
   } else {
     Serial.write(0);
  }
}
}
