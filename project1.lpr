{
// Una empresa de venta de artículos electrónicos se especializa
// en la venta de tres tipos de productos: Computadores, Celulares e Impresoras.
// Históricamente la venta de estos productos ha sido realizada de forma manual,
// por lo que se le pide a usted implementar un sistema que atienda los requerimientos.
//
// Los productos (Computadores, Celulares  e Impresoras) tienen un código
// que identifica el tipo de producto (A - Computadores, B - Celulares y C - Impresoras),
// un código único, marca y precio.
//
// Los clientes tienen un rut, nombre y edad.


// Los requerimientos son:
// 1. Implementar una funcionalidad que permita el ingreso de clientes y listarlos
// 2. Implementar una funcionalidad que permita el ingreso de los productos mencionados y listarlos
// 3. Implementar una funcionalidad que permita realizar para un cliente, una compra de un producto
// 4. Listar productos comprados para clientes mayores a 65 años.


// Notas: - Si un producto fue comprado por un cliente, este producto no puede estar disponible para otro cliente. (D: Disponible, V: vendido).
//		  - Actualmente solo hay disponibles 12 productos para la venta.
//		  - Llenar con código en las partes donde diga: Código


// Ejemplo de Producto
// Tipo - Código - Marca - Precio - Disponibilidad
//--------------------------
// A - 1 - Acer - 20 - V
// B - 2 - Samsung - 10 - D
// C - 3 - HP - Disponible
// A - 4 - Lenovo - 30 - D
// B - 5 - Apple - 30 - D
// C - 6 - Brother - 10 - V
// A - 7 - Dell - 20 - D
// B - 8 - Xiaomi- 10 - D
// C - 9 - Epson - 5 - D
// A - 10 - Asus - 15 - D
// B - 11- Huawuei - 25 - V
// C - 12- HP - 10 - D

//Ejemplo de Cliente
// RUT - Nombre - Edad
//-----------------------
//14554324 - Pedro - 30
//15654876 - Maria - 25
//20323243 - Mateo - 50
//45343238 - Diego - 66
//16756379 - Rosa  - 70
//6545654  - Juan -  65


//Ejemplo de Compra (Cada columna representa un producto as ser comprado. X representa un producto comprado)
// RUT     P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15
//-----------------------------------------------------------
//14554324 X  -  -  -  -  X  -   - -   -   -   -   -   -   -
//45343238 -  -  -  -  -  -  -   - -   -   X   -   -   -   -


}

program Comercio;

Var
    opcion:Integer;
    clientes, productos, compras: array of array of string;

procedure  cargarDatos();
begin
  Cliente[0,0] = '14554324'
  Cliente[0,1] = 'Pedro'
  Cliente[0,2] = '30'
  Cliente[1,0] = '15654876'
  Cliente[1,1] = 'Maria'
  Cliente[1,2] = '25'
  Cliente[2,0] = '20323243'
  Cliente[2,1] = 'Mateo'
  Cliente[2,2] = '50'
  Cliente[3,0] = '45343238'
  Cliente[3,1] = 'Diego'
  Cliente[3,2] = '66'
  Cliente[4,0] = '16756379'
  Cliente[4,1] = 'Rosa'
  Cliente[4,2] = '70'
  Cliente[5,0] = '6545654'
  Cliente[5,1] = 'Juan'
  Cliente[5,2] = '65'

  Producto[0,0]='A'
  Producto[1,0]='B'
  Producto[2,0]='C'
  Producto[3,0]='A'
  Producto[4,0]='B'
  Producto[5,0]='C'
  Producto[6,0]='A'
  Producto[7,0]='B'
  Producto[8,0]='C'
  Producto[9,0]='A'
  Producto[10,0]='B'
  Producto[11,0]='C'
  Producto[0,0]='1'
  Producto[1,0]='2'
  Producto[2,0]='3'
  Producto[3,0]='4'
  Producto[4,0]='5'
  Producto[5,0]='6'
  Producto[6,0]='7'
  Producto[7,0]='8'
  Producto[8,0]='9'
  Producto[9,0]='10'
  Producto[10,0]='11'
  Producto[11,0]='12'
  Producto[0,1]= 'Acer'
  Producto[1,1]= 'Samsung'
  Producto[2,1]= 'HP'
  Producto[3,1]= 'Lenovo'
  Producto[4,1]= 'Apple'
  Producto[5,1]= 'Brother'
  Producto[6,1]= 'Dell'
  Producto[7,1]= 'Xiaomi'
  Producto[8,1]= 'Epson'
  Producto[9,1]= 'Asus'
  Producto[10,1]= 'Huawue'
  Producto[11,1]= 'HP'
  Producto[0,2]='20'
  Producto[1,2]='10'
  Producto[2,2]='20'
  Producto[3,2]='30'
  Producto[4,2]='30'
  Producto[5,2]='10'
  Producto[6,2]='20'
  Producto[7,2]='10'
  Producto[8,2]='5'
  Producto[9,2]='15'
  Producto[10,2]='25'
  Producto[11,2]='10'
  Producto[0,3]= 'V '
  Producto[1,3]= 'D '
  Producto[2,3]='D'
  Producto[3,3]= 'D'
  Producto[4,3]= 'D'
  Producto[5,3]= 'V'
  Producto[6,3]= 'D'
  Producto[7,3]= 'D'
  Producto[8,3]= 'D'
  Producto[9,3]= 'D'
  Producto[10,3]= 'V'
  Producto[11,3]= 'D'

  Compra[0,0] = '14554324'
  Compra[0,1] = 'X'
  Compra[0,2] = '-'
  Compra[0,3] = '-'
  Compra[0,4] = '-'
  Compra[0,5] = '-'
  Compra[0,6] = 'X'
  Compra[0,7] = '-'
  Compra[0,8] = '-'
  Compra[0,9] = '-'
  Compra[0,10] = '-'
  Compra[0,11] = '-'
  Compra[0,12] = '-'
  Compra[0,13] = '-'
  Compra[0,14] = '-'
  Compra[1,0] = '45343238'
  Compra[1,1] = '-'
  Compra[1,2] = '-'
  Compra[1,3] = '-'
  Compra[1,4] = '-'
  Compra[1,5] = '-'
  Compra[1,6] = '-'
  Compra[1,7] = '-'
  Compra[1,8] = '-'
  Compra[1,9] = '-'
  Compra[1,10] = '-'
  Compra[1,11] = 'X'
  Compra[1,12] = '-'
  Compra[1,13] = '-'
  Compra[1,14] = '-'



end;


begin

     setLength(clientes,3,10);
     setLength(productos,5,20);
     setLength(compras,3,16);
     Writeln('[1] - Ingresar Nuevo Cliente');
     Writeln('[2] - Ingresar Nuevo Producto');
     Writeln('[3] - Listar Clientes');
     Writeln('[4] - Listar Productos');
     Writeln('[5] - Comprar Producto');
     Writeln('[6] - Listar Compras de Clientes > 65');
     Writeln('Otro numero: salir');
     Writeln('Ingrese su opcion? ');
     Readln(opcion);
     While opcion < 7 Do
     Begin

          case opcion of
          1:Writeln('Hola');
          2:;
          3:;
          4:;
          5:;
          6:;
          end;


          Writeln('[1] - Ingresar Nuevo Cliente');
          Writeln('[2] - Ingresar Nuevo Producto');
          Writeln('[3] - Listar Clientes');
          Writeln('[4] - Listar Productos');
          Writeln('[5] - Comprar Producto');
          Writeln('[6] - Listar Compras de Clientes > 65');
          Writeln('Otro numero: salir');
          Writeln('Ingrese su opcion? ');
          Readln(opcion);

     end;




end.

