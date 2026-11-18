# Processing - TP7: Control de Entradas y Salidas

## Descripción

Este programa corresponde al Trabajo Práctico N.º 7 de Informática II, de la carrera Ingeniería Electrónica de la Universidad Tecnológica Nacional, Facultad Regional Mendoza.

Se desarrolló una interfaz gráfica utilizando **Processing**, que permite visualizar y controlar las entradas y salidas digitales de una placa Arduino Uno mediante comunicación serial bidireccional.

## Funcionamiento de la interfaz

La interfaz gráfica cuenta con los siguientes elementos:

- **Entrada E1:** cuadrado que indica el estado del pulsador 1.
- **Entrada E2:** cuadrado que indica el estado del pulsador 2.
- **Salida L1:** círculo que representa el LED rojo.
- **Salida L2:** círculo que representa el LED azul.
- **Control rojo:** botón que permite encender o apagar el LED rojo.
- **Control azul:** botón que permite encender o apagar el LED azul.

Los cuadrados cambian de color cuando se presionan los pulsadores físicos. Los círculos cambian de color según el estado de los LED.

## Comunicación serial

La comunicación entre Arduino y Processing se realiza a **9600 baudios**.

Arduino envía continuamente los estados de las entradas y salidas mediante mensajes con el siguiente formato:

`E1:1,E2:1,LED1:0,LED2:0`

Processing interpreta estos mensajes y actualiza los elementos gráficos.

Por otro lado, cuando el usuario hace clic en los botones de control, Processing envía los comandos:

- `ROJO`: cambia el estado solicitado del LED rojo.
- `AZUL`: cambia el estado solicitado del LED azul.

Arduino recibe estos comandos y actualiza las salidas correspondientes.

## Requisitos

Para ejecutar el proyecto se necesita (en caso que simulemos arduino UNO con SimulIDE o cualquier otro simulador)

- Processing con la biblioteca `processing.serial`.
- SimulIDE para simular el circuito Arduino.
- Arduino IDE para compilar el código y generar el archivo `.hex`.
- VSPE para establecer la comunicación mediante puertos seriales virtuales.

## Instrucciones de ejecución

### 1. Configurar los puertos virtuales

Abrir VSPE y crear un par de puertos seriales virtuales:

- **COM10:** utilizado por SimulIDE.
- **COM11:** utilizado por Processing.

### 2. Iniciar Arduino en SimulIDE

1. Abrir el circuito del proyecto en SimulIDE.
2. Cargar el archivo `.hex` compilado desde Arduino IDE.
3. Configurar el componente Serial Port para utilizar COM10.
4. Iniciar la simulación.

### 3. Ejecutar Processing

1. Abrir el archivo `.pde` del proyecto en Processing.
2. Verificar que el puerto configurado sea COM11.
3. Ejecutar el programa mediante el botón Run.
4. Comprobar que la interfaz reciba los estados enviados por Arduino.

### 4. Probar el funcionamiento

- Presionar el pulsador 1 en SimulIDE y observar cómo cambia el estado de E1 y del LED rojo.
- Presionar el pulsador 2 y observar los cambios correspondientes a E2 y al LED azul.
- Hacer clic en CONTROL ROJO para cambiar el estado del LED rojo.
- Hacer clic en CONTROL AZUL para cambiar el estado del LED azul.

Los estados de las salidas se actualizan en la interfaz según la información recibida desde Arduino.

## Observaciones

Los puertos COM10 y COM11 corresponden a la configuración utilizada durante el desarrollo. Si se utilizan otros puertos, se debe modificar la configuración de SimulIDE y la instrucción de apertura del puerto serial en Processing.
En caso que utilicemos un Arduino UNO fisico, tendremos que configurar un solo puerto, por ejemplo COM6, y tanto Arduino IDE como processing deberan utilizar el mismo puerto.
