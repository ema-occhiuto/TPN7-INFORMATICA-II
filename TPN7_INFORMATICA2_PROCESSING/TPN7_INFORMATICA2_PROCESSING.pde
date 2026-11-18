import processing.serial.*;

Serial puerto;//creamos el objeto puerto

int estadoRojo=0;
int estadoAzul=0;
int estadoEntrada1=1;
int estadoEntrada2=2;

void setup(){
  size(600,400);
  
  //creamos comunicacion con puerto serial virtual
  puerto=new Serial(this,"COM11",9600);
  puerto.bufferUntil('\n');
  
  println("Puerto serial COM11 abierto correctamente");
}


void draw(){
  background(240);
  
  //Titulo
  fill(0);//color NEGRO
  textSize(24);
  textAlign(CENTER);
  text("CONTROL DE ENTRADAS Y SALIDAS",300,50);
  
  //Led Rojo
  if(estadoRojo==1){
    fill(255,0,0);
  } else{
     fill(100); 
  }
  
  //dibujamos la primer elipse
  ellipse(180,180,100,100);
  
  
    // LED azul
  if (estadoAzul == 1) {
    fill(0, 0, 255);
  } else {
    fill(100);
  }
  //dibujamos la segunda elipse
  ellipse(420, 180, 100, 100);
  
  //ETIQUETAS DE LED ROJO Y AZUL
  fill(0);
  textSize(18);
  text("LED ROJO",180,270);
  text("LED AZUL",420,270);
  
  
  //BOTON DE LED ROJO
  fill(200);
  rect(110,310,140,50,10);
  
  //BOTON DE LED AZUL
  rect(350,310,140,50,10);
  
  //texto de los botones
  fill(0);
  textSize(16);
  textAlign(CENTER,CENTER);
  
  text("CONTROL ROJO",180,335);
  text("CONTROL AZUL",420,335);
  
  //ENTRADA 1
  if(estadoEntrada1==0){
    fill(0,200,0);
  }else{
    fill(100);
  }
  rect(130,65,100,50);
  //Texto de la Entrada1
  fill(0);
  text("E1",180,90);
  
  //ENTRADA 2
  if(estadoEntrada2==0){
    fill(0,200,0);
  }else{
    fill(100);
  }
  rect(370,65,100,50);
  //Texto en la Entrada2
  fill(0);
  text("E2",420,90);
}
  
  
  
  
void serialEvent(Serial puerto){
  String mensaje=puerto.readStringUntil('\n');
  

  if(mensaje!=null){
      mensaje=trim(mensaje);//eliminamos los saltos de linea
      
      String[] datos=split(mensaje,',');
      
      if (datos.length == 4) {

      if (datos[0].startsWith("E1:") &&
      datos[1].startsWith("E2:") &&
      datos[2].startsWith("LED1:") &&
      datos[3].startsWith("LED2:")) {

      estadoEntrada1 = int(datos[0].substring(3));
      estadoEntrada2 = int(datos[1].substring(3));

      estadoRojo = int(datos[2].substring(5));
      estadoAzul = int(datos[3].substring(5));
      }
      }
  }
}
  

  

        
void mousePressed(){
  
 //Boton rojo
 if(mouseX>=110 && mouseX<=250 &&
 mouseY>=310 && mouseY<=360){
   puerto.write("ROJO\n");
 }
 
 //Boton azul
 if(mouseX>=350 && mouseX<=490 &&
 mouseY>=310 && mouseY<=360){
     puerto.write("AZUL\n");
 }
}
  
  
