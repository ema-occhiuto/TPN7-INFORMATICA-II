# Arduino - TP7: Control de Entradas y Salidas

## Descripción

En esta sección se encuentra el código fuente desarrollado para Arduino Uno, correspondiente al Trabajo Práctico N.º 7 de Informática II.

El programa permite controlar dos LED mediante pulsadores y recibir comandos desde una interfaz gráfica desarrollada en Processing.

## Componentes utilizados

- Arduino Uno
- 1 LED rojo
- 1 LED azul
- 2 pulsadores
- 2 resistencias limitadoras de corriente para los LED
- Puerto serial virtual para la comunicación con Processing

## Conexiones del circuito

| Componente | Pin Arduino |
|---|---|
| LED rojo | D5 |
| LED azul | D6 |
| Pulsador 1 | D7 |
| Pulsador 2 | D8 |
| Comunicación TX | D1 |
| Comunicación RX | D0 |

Los pulsadores están configurados mediante `INPUT_PULLUP`, por lo que se activan cuando Arduino detecta un estado `LOW`.

## Funcionamiento

El programa realiza las siguientes operaciones:

1. Lee continuamente el estado de los dos pulsadores.
2. Enciende el LED correspondiente mientras su pulsador está presionado.
3. Recibe los comandos `ROJO` y `AZUL` enviados desde Processing.
4. Utiliza variables booleanas para mantener o cambiar el estado de los LED desde la interfaz gráfica.
5. Envía a Processing los estados de las dos entradas y las dos salidas mediante comunicación serial a 9600 baudios.

## Simulación

El circuito fue implementado en SimulIDE utilizando una placa Arduino Uno virtual.

Para ejecutar la simulación:

1. Abrir el archivo del circuito en SimulIDE.
2. Compilar el código Arduino desde Arduino IDE y exportar el archivo `.hex`.
3. Cargar el archivo `.hex` en el Arduino virtual.
4. Configurar el puerto serial correspondiente.
5. Iniciar la simulación.

## Esquemático del circuito

![Circuito Arduino en SimulIDE](esquematico.png)
