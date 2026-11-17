const int ledRojo=5;
const int ledAzul=6;

const int pulsador1=7;
const int pulsador2=8;

//CONSTANTES BOOLEANAS
bool rojo_prendido=false;
bool azul_prendido=false;

void recibirMensajeProcessing();

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

  recibirMensajeProcessing();

if(digitalRead(pulsador1)==LOW || rojo_prendido){
  digitalWrite(ledRojo,HIGH);
}
else{
digitalWrite(ledRojo,LOW);
}

if(digitalRead(pulsador2)==LOW || azul_prendido){
  digitalWrite(ledAzul,HIGH);
}
else{
  digitalWrite(ledAzul,LOW);
}

  // Enviamos los estados de las entradas
  Serial.print("E1:");//Mandamos el mensaje del estado 1
  Serial.println(digitalRead(pulsador1));

  Serial.print("E2:");//Mandamos el mensaje del estado 2
  Serial.println(digitalRead(pulsador2));

  
  //Enviamos los estados de las salidas 
  Serial.print("LED1:");
  Serial.print(digitalRead(ledRojo));

  Serial.print(",LED2:");
  Serial.println(digitalRead(ledAzul));

  delay(100);
}

void recibirMensajeProcessing(){
  if(Serial.available()>0){

  String comando=Serial.readStringUntil('\n');
  comando.trim();

  //Si prrocessing envia ROJO
  if(comando=="ROJO"){
  rojo_prendido=!rojo_prendido;
  }
  //Si processinf envia AZUL
  if(comando=="AZUL"){
  azul_prendido=!azul_prendido;
  }

  }
}



