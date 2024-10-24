# Gestión de Transacciones Bancarias (CiberBanco) 💳
Este proyecto en Java gestiona el acceso y las transacciones de un sistema bancario, permitiendo al usuario ingresar un código de acceso para iniciar sesión y realizar operaciones como consultar saldo, retirar, depositar y transferir dinero 💵

## Funcionalidades
- **Inicio de Sesión:** 🔐 Permite al usuario ingresar un código de acceso y valida su autenticidad, permitiendo reintentos en caso de error
- **Información del Cliente:** 📋 Muestra el nombre, tipo de cuenta, número de cuenta y saldo disponible
- **Menú de Opciones:** 📜 Ofrece opciones para:
  - Consultar saldo 💰
  - Retirar dinero 💸
  - Depositar dinero 🏦
  - Transferir dinero 🔄
  - Salir del sistema 🚪
- **Manejo de Transacciones:** 💰 Verifica que las operaciones no excedan el saldo disponible y maneja entradas no válidas

## Requisitos 🚀
- Java JDK 8 o superior ☕
- No requiere librerías externas 📦

# Cómo Ejecutar el Programa 💡
- **Instala Java:** 📥 Asegúrate de que Java esté instalado en tu sistema. Puedes descargarlo desde [oracle.com](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- **Descarga el Repositorio:** 📂 Clona o descarga este repositorio en tu computadora
- **Ejecuta el Programa:** 🖥️ Abre tu terminal o entorno de desarrollo y ejecuta el archivo `CiberBanco.java`
- **Sigue las Instrucciones:** 📋 Una vez que el programa esté en marcha, sigue las indicaciones en pantalla para ingresar los datos

## Documentación 📚
- **[Análisis del problema](docs/Análisis%20CiberBanco.pdf)**: 📝 Documento que describe la necesidad de un sistema para gestionar transacciones bancarias, validando el acceso y asegurando la correcta ejecución de operaciones
- **[Procesos del problema](docs/Algoritmo%20CiberBanco.pdf)**: 📄 Guía que detalla el proceso de validación del acceso, manejo de errores y realización de transacciones
- **[Pseudocódigo](docs/CiberBanco.psc)**: 🖥️ Este pseudocódigo en Pseint refleja las instrucciones que implementa el documento de procesos del problema, facilitando la gestión de datos y la presentación de resultados de manera estructurada   
- **[Diagrama de Flujo](docs/Diagrama%20de%20flujo%20CiberBanco.pdf)**: 🗺️ Representación visual que ilustra el proceso del sistema, desde el ingreso del código de acceso hasta la realización de transacciones, mostrando cómo fluyen los datos y las decisiones dentro del sistema
- **[Código en Java](CiberBanco.java)**: ☕  Implementación completa del sistema bancario en Java, que incluye funcionalidades como el procesamiento de transacciones y acceso seguro mediante autenticación

## Ejemplo de Uso 📊
- **Iniciar Sesión:** 🔑 El usuario ingresa su código de acceso
- **Mostrar Información del Cliente:** 📋 Una vez autenticado, se muestra su nombre, tipo de cuenta, número de cuenta y saldo
- **Seleccionar Opción del Menú:** 🗂️ El usuario elige entre consultar saldo, retirar, depositar o transferir
- **Realizar la Transacción:** 💳 Según la opción seleccionada, el sistema procesa la transacción y muestra el saldo actualizado