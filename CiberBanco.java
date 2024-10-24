import java.util.Scanner;

public class CiberBanco {
    public static void main(String[] args) {
        String codigoAcceso = "12345";
        String nombre = "Steven Rogers";
        String tipoDeCuenta = "Corriente";
        String numeroDeCuenta = "8021902";
        double saldo = 4000.99;
        int opcionMenu = 0;
        boolean accesoConcedido = false;
        String codigoIngresado, respuesta;
        double valorARetirar, valorADepositar, valorATransferir;
        String destinatario;

        Scanner scanner = new Scanner(System.in);

        while (!accesoConcedido) {
            System.out.println("*******");
            System.out.print("Coloca tu código para iniciar sesión: ");
            codigoIngresado = scanner.nextLine();

            if (codigoIngresado.equals(codigoAcceso)) {
                System.out.println("Acceso concedido");
                accesoConcedido = true;
            } else {
                System.out.println("Código incorrecto o usuario no registrado");
                System.out.print("¿Desea intentar nuevamente? (Si/No): ");
                respuesta = scanner.nextLine().toLowerCase();

                if (respuesta.equals("si")) {
                    continue; 
                } else if (respuesta.equals("no")) {
                    System.out.println("Saliendo del programa");
                    return; 
                } else {
                    System.out.println("Opción no válida, intente nuevamente");
                }
            }
        }

        System.out.println("*******");
        System.out.println("=== Información del cliente ===");
        System.out.printf("Nombre del cliente: %s%n", nombre);
        System.out.printf("El tipo de cuenta es: %s%n", tipoDeCuenta);
        System.out.printf("El número de cuenta es: %s%n", numeroDeCuenta);
        System.out.printf("Su saldo disponible es: %.2f%n", saldo);
        System.out.println("*******");

        while (opcionMenu != 5) {
            System.out.println("==== Menú de opciones ====");
            System.out.println("Escriba el número de la opción deseada:");
            System.out.println("1. Consultar saldo");
            System.out.println("2. Retirar");
            System.out.println("3. Depositar");
            System.out.println("4. Transferir");
            System.out.println("5. Salir");
            opcionMenu = scanner.nextInt();

            switch (opcionMenu) {
                case 1:
                    System.out.printf("El saldo actual es: %.2f%n", saldo);
                    break;
                case 2:
                    System.out.print("¿Cuál es el valor que desea retirar? ");
                    valorARetirar = scanner.nextDouble();
                    if (valorARetirar > saldo) {
                        System.out.println("Saldo insuficiente");
                    } else {
                        saldo -= valorARetirar;
                        System.out.printf("El saldo actualizado es: %.2f%n", saldo);
                    }
                    break;
                case 3:
                    System.out.print("¿Cuál es el valor que desea depositar? ");
                    valorADepositar = scanner.nextDouble();
                    saldo += valorADepositar;
                    System.out.printf("El saldo actualizado es: %.2f%n", saldo);
                    break;
                case 4:
                    System.out.print("¿Cuánto desea transferir? ");
                    valorATransferir = scanner.nextDouble();
                    if (valorATransferir > saldo) {
                        System.out.println("Saldo insuficiente");
                    } else {
                        System.out.print("¿A quién desea transferirle el dinero? (ingrese el nombre): ");
                        scanner.nextLine(); 
                        destinatario = scanner.nextLine();
                        saldo -= valorATransferir;
                        System.out.printf("Se ha transferido %.2f a %s%n", valorATransferir, destinatario);
                        System.out.printf("El saldo actualizado es: %.2f%n", saldo);
                    }
                    break;
                case 5:
                    System.out.println("Saliendo del programa, gracias por utilizar nuestros servicios");
                    return;
                default:
                    System.out.println("Opción no válida, intente nuevamente");
                    break;
            }
        }
        scanner.close();
    }
}