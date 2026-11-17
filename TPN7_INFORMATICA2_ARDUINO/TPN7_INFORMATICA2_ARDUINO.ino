const int ledRojo=5;
const int ledAzul=6;

const int pulsador1=7;
const int pulsador2=8;

void setup(){
  Serial.begin(9600);

  //configuramos las salidas
  pinMode(ledRojo,OUTPUT);
  pinMode(ledAzul,OUTPUT);

  //confirguramos las entradas
  pinMode(pulsador1,INPUT_PULLUP);
  pinMode(pulsador2,INPUT_PULLUP);

}

void loop(){

if(digitalRead(pulsador1)==LOW){
  digitalWrite(ledRojo,HIGH);
}
else{
digitalWrite(ledRojo,LOW);
}

if(digitalRead(pulsador2)==LOW){
  digitalWrite(ledAzul,HIGH);
}
else{
  digitalWrite(ledAzul,LOW);
}

  // Enviamos los estados a Processing
  Serial.print("LED1:");
  Serial.print(digitalRead(ledRojo));

  Serial.print(",LED2:");
  Serial.println(digitalRead(ledAzul));

  delay(100);
}





