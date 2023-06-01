program Comercio;

Var
    opcion,i,j,punteroCliente, punteroProducto, punteroCompra:Integer;
    cliente, producto, compra: array of array of string;
    rutCliente,nombreCliente,edadCliente: string;
    encontrado:boolean;

function buscarCliente(rut:string):boolean;
begin
  buscarCliente:=False ;
  for i:=0 to Length(Cliente)-1 do
  begin
      if Cliente[i,0] = rut then
         buscarCliente:=True;
  end;
end;

procedure  cargarDatos();
begin
  Cliente[0,0] := '14554324';
  Cliente[0,1] := 'Pedro';
  Cliente[0,2] := '30';
  Cliente[1,0] := '15654876' ;
  Cliente[1,1] := 'Maria'    ;
  Cliente[1,2] := '25'       ;
  Cliente[2,0] := '20323243' ;
  Cliente[2,1] := 'Mateo'    ;
  Cliente[2,2] := '50'       ;
  Cliente[3,0] := '45343238' ;
  Cliente[3,1] := 'Diego'    ;
  Cliente[3,2] := '66'       ;
  Cliente[4,0] := '16756379' ;
  Cliente[4,1] := 'Rosa'     ;
  Cliente[4,2] := '70'       ;
  Cliente[5,0] := '6545654'  ;
  Cliente[5,1] := 'Juan'     ;
  Cliente[5,2] := '65'       ;

  Producto[0,0]:='A'         ;
  Producto[1,0]:='B'         ;
  Producto[2,0]:='C'         ;
  Producto[3,0]:='A'         ;
  Producto[4,0]:='B'         ;
  Producto[5,0]:='C'         ;
  Producto[6,0]:='A'         ;
  Producto[7,0]:='B'         ;
  Producto[8,0]:='C'         ;
  Producto[9,0]:='A'         ;
  Producto[10,0]:='B'        ;
  Producto[11,0]:='C'        ;
  Producto[0,0]:='1'         ;
  Producto[1,0]:='2'         ;
  Producto[2,0]:='3'         ;
  Producto[3,0]:='4'         ;
  Producto[4,0]:='5'         ;
  Producto[5,0]:='6'         ;
  Producto[6,0]:='7'         ;
  Producto[7,0]:='8'         ;
  Producto[8,0]:='9'         ;
  Producto[9,0]:='10'        ;
  Producto[10,0]:='11'       ;
  Producto[11,0]:='12'       ;
  Producto[0,1]:= 'Acer'     ;
  Producto[1,1]:= 'Samsung'  ;
  Producto[2,1]:= 'HP'       ;
  Producto[3,1]:= 'Lenovo'   ;
  Producto[4,1]:= 'Apple'    ;
  Producto[5,1]:= 'Brother'  ;
  Producto[6,1]:= 'Dell'     ;
  Producto[7,1]:= 'Xiaomi'   ;
  Producto[8,1]:= 'Epson'    ;
  Producto[9,1]:= 'Asus'     ;
  Producto[10,1]:= 'Huawue'  ;
  Producto[11,1]:= 'HP'      ;
  Producto[0,2]:='20'        ;
  Producto[1,2]:='10'        ;
  Producto[2,2]:='20'        ;
  Producto[3,2]:='30'        ;
  Producto[4,2]:='30'        ;
  Producto[5,2]:='10'        ;
  Producto[6,2]:='20'        ;
  Producto[7,2]:='10'        ;
  Producto[8,2]:='5'         ;
  Producto[9,2]:='15'        ;
  Producto[10,2]:='25'       ;
  Producto[11,2]:='10'       ;
  Producto[0,3]:= 'V '       ;
  Producto[1,3]:= 'D '       ;
  Producto[2,3]:='D'         ;
  Producto[3,3]:= 'D'        ;
  Producto[4,3]:= 'D'        ;
  Producto[5,3]:= 'V'        ;
  Producto[6,3]:= 'D'        ;
  Producto[7,3]:= 'D'        ;
  Producto[8,3]:= 'D'        ;
  Producto[9,3]:= 'D'        ;
  Producto[10,3]:= 'V'       ;
  Producto[11,3]:= 'D'       ;

  Compra[0,0] := '14554324'  ;
  Compra[0,1] := 'X'         ;
  Compra[0,2] := '-'         ;
  Compra[0,3] := '-'         ;
  Compra[0,4] := '-'         ;
  Compra[0,5] := '-'         ;
  Compra[0,6] := 'X'         ;
  Compra[0,7] := '-'         ;
  Compra[0,8] := '-'         ;
  Compra[0,9] := '-'         ;
  Compra[0,10] := '-'        ;
  Compra[0,11] := '-'        ;
  Compra[0,12] := '-'        ;
  Compra[0,13] := '-'        ;
  Compra[0,14] := '-'        ;
  Compra[1,0] := '45343238'  ;
  Compra[1,1] := '-'         ;
  Compra[1,2] := '-'         ;
  Compra[1,3] := '-'         ;
  Compra[1,4] := '-'         ;
  Compra[1,5] := '-'         ;
  Compra[1,6] := '-'         ;
  Compra[1,7] := '-'         ;
  Compra[1,8] := '-'         ;
  Compra[1,9] := '-'         ;
  Compra[1,10] := '-'        ;
  Compra[1,11] := 'X'        ;
  Compra[1,12] := '-'        ;
  Compra[1,13] := '-'        ;
  Compra[1,14] := '-'        ;
end;


begin

     setLength(cliente,10,3);
     setLength(producto,20,5);
     setLength(compra,10,20);

     {Inicializando Tabla Cliente}
     for i:=0 to 9 do
         for j:=0 to 2 do
             cliente[i,j]:='';

     {Inicializando Tabla Producto}
     for i:=0 to 19 do
         for j:=0 to 4 do
             producto[i,j]:='';

     {Inicializando Tabla Compra}
     for i:=0 to 9 do
         for j:=0 to 19 do
             compra[i,j]:='';


     punteroCliente := 0;
     i := 0;
     while Cliente[i,0] <> '' do
		i := i + 1;
     punteroCliente := i;

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
          1:
            Begin

              punteroCliente := 0;
              i := 0;
              while Cliente[i,0] <> '' do
	          i := i + 1;
              punteroCliente := i;

              Write('Ingrese el Rut: ');
              Readln(rutCliente);
              Write('Ingrese el Nombre: ');
              Readln(nombreCliente);
              Write('Ingrese la Edad: ');
              Readln(edadCliente);

              encontrado:=buscarCliente(rutCliente);
              Writeln(encontrado);
              if (not encontrado) then
              begin
                Cliente[punteroCliente,0] := rutCliente;
	        Cliente[punteroCliente,1] := nombreCliente;
	        Cliente[punteroCliente,2] := edadCliente;
	        Writeln('Cliente Ingresado');
              end
              else
                Writeln('Cliente ya existe!');

            End;
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

