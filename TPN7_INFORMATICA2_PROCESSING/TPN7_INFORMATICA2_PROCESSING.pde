import processing.serial.*;

Serial puerto;//creamos el objeto puerto

int estadoRojo=0;
int estadoAzul=0;

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
  }
  else{
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
  
  //ETIQUETAS
  fill(0);
  textSize(18);
  text("LED ROJO",180,270);
  text("LED AZUL",420,270);
}
  
  
  
  
void serialEvent(Serial puerto){
  String mensaje=puerto.readStringUntil('\n');
  

  if(mensaje!=null){
      mensaje=trim(mensaje);//eliminamos los saltos de linea
      
      String[] datos=split(mensaje,',');
      
      if(datos.length==2){//si recibe los dos estados del led
        
        estadoRojo=int(datos[0].substring(5));
        estadoAzul=int(datos[1].substring(5));
      }
  }
}
        

  
  
  
