Algoritmo CiberBanco
    Definir codigoAcceso Como Caracter;
    Definir nombre Como Caracter;
    Definir tipoDeCuenta Como Caracter;
    Definir numeroDeCuenta Como Caracter;
    Definir saldo Como Real;
    Definir opcionMenu Como Entero;
    Definir accesoConcedido Como Logico;
    Definir codigoIngresado, respuesta Como Caracter;
    Definir continuar Como Logico;
    Definir valorARetirar, valorADepositar, valorATransferir Como Real;
    Definir destinatario Como Caracter;
    
	// Datos de cliente y cuenta
    codigoAcceso = "12345";
    nombre = "Steven Rogers";
    tipoDeCuenta = "Corriente";
    numeroDeCuenta = "8021902";
    saldo = 4000.99;
    opcionMenu = 0;
    accesoConcedido = Falso;
    continuar = Verdadero;
    
	// Ciclo para validar acceso del sistema
    Mientras (!accesoConcedido Y continuar) Hacer
        Escribir "*******";
        Escribir "Coloca tu código para iniciar sesión:";
        Leer codigoIngresado;
        
		// Verificacion del codigo de acceso
        Si codigoIngresado = codigoAcceso Entonces
            Escribir "Acceso concedido";
            accesoConcedido = Verdadero;
        Sino
            Escribir "Código incorrecto o usuario no registrado";
            Escribir "¿Desea intentar nuevamente? (Si/No)";
            Leer respuesta;
            
            Si Minusculas(respuesta) = "si" Entonces
                continuar = Verdadero;
            Sino
                Si Minusculas(respuesta) = "no" Entonces
                    Escribir "Saliendo del programa";
                    continuar = Falso; 
                Sino
                    Escribir "Opción no válida, intente nuevamente";
                Fin Si;
            Fin Si;
        Fin Si;
    Fin Mientras;
    
    Si accesoConcedido Entonces
        Escribir "*******";
        Escribir "=== Información del cliente ===";
        Escribir "Nombre del cliente: ", nombre;
        Escribir "El tipo de cuenta es: ", tipoDeCuenta;
        Escribir "El número de cuenta es: ", numeroDeCuenta;
        Escribir "Su saldo disponible es: ", saldo;
        Escribir "*******";
        
		// Ciclo de menú de opciones
        Mientras (opcionMenu <> 5) Hacer
            Escribir "==== Menú de opciones ===="; 
            Escribir "Escriba el número de la opción deseada:";
            Escribir "1. Consultar saldo";
            Escribir "2. Retirar";
            Escribir "3. Depositar";
            Escribir "4. Transferir";
            Escribir "5. Salir";
            Leer opcionMenu;
            
            Segun opcionMenu Hacer
                1:
                    Escribir "El saldo actual es: ", saldo;
                2:
                    Escribir "¿Cuál es el valor que desea retirar?";
                    Leer valorARetirar;
                    Si valorARetirar > saldo Entonces
                        Escribir "Saldo insuficiente";
                    Sino
                        saldo = saldo - valorARetirar;
                        Escribir "El saldo actualizado es: ", saldo;
                    Fin Si;
                3:
                    Escribir "¿Cuál es el valor que desea depositar?";
                    Leer valorADepositar;
                    saldo = saldo + valorADepositar;
                    Escribir "El saldo actualizado es: ", saldo;
                4:
                    Escribir "¿Cuánto desea transferir?";
                    Leer valorATransferir;
                    Si valorATransferir > saldo Entonces
                        Escribir "Saldo insuficiente";
                    Sino
                        Escribir "¿A quién desea transferirle el dinero? (ingrese el nombre)";
                        Leer destinatario;
                        saldo = saldo - valorATransferir;
                        Escribir "Se ha transferido ", valorATransferir, " a ", destinatario;
                        Escribir "El saldo actualizado es: ", saldo;
                    Fin Si;
                5:
                    Escribir "Saliendo del programa, gracias por utilizar nuestros servicios";
                De Otro Modo:
                    Escribir "Opción no válida, intente nuevamente";
            Fin Segun;
        Fin Mientras;
    Fin Si;
Fin Algoritmo


