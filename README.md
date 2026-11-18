# TP7 - Control de Entradas y Salidas con Arduino y Processing

## Datos del estudiante

**Nombre y apellido:** Emanuel Occhiuto

**Carrera:** Ingeniería Electrónica

**Materia:** Informática II

**Universidad:** Universidad Tecnológica Nacional - Facultad Regional Mendoza

**Año:** 2026

## Descripción del proyecto

Este proyecto corresponde al Trabajo Práctico N.º 7 de la materia Informática II.

Consiste en el desarrollo de un sistema de control de entradas y salidas digitales utilizando una placa Arduino Uno y una interfaz gráfica realizada en Processing.

El sistema permite visualizar el estado de dos pulsadores y dos LED (rojo y azul), además de controlar los LED mediante botones de la interfaz gráfica.

La comunicación entre Arduino y Processing es bidireccional y se realiza mediante el puerto serial.

Ademas utilize VSPE (puertos seriales virtuales) para la comunicacion birideccional.

## Funcionamiento

- **Entradas:** dos cuadrados (E1 y E2) representan los estados de los pulsadores conectados a Arduino.
- **Salidas:** dos círculos (L1 y L2) representan los estados de los LED.
- **Control físico:** al presionar un pulsador en arduino se enciende el LED correspondiente y su estado de Entrada.
- **Control gráfico:** mediante los botones de Processing se pueden encender y apagar los LED.
- **Comunicación:** Arduino envía los estados de las entradas y salidas a Processing, mientras que Processing envía comandos para controlar los LED.

## Herramientas utilizadas

- Arduino IDE
- Processing
- SimulIDE
- VSPE (puertos seriales virtuales)

## Organización del repositorio

- **Arduino:** contiene el código fuente y el esquemático del circuito.
- **Processing:** contiene el código fuente de la interfaz gráfica y las instrucciones para su ejecución.

## Video demostrativo

En el siguiente video se muestra el funcionamiento del sistema, la simulación del circuito en SimulIDE y la comunicación con Processing.

**Enlace al video:** 
