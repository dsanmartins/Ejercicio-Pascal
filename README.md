 
 ## Descripción
 
 Una empresa de venta de artículos electrónicos se especializa
 en la venta de tres tipos de productos: Computadores, Celulares e Impresoras.
 Históricamente la venta de estos productos ha sido realizada de forma manual,
 por lo que se le pide a usted implementar un sistema que atienda los requerimientos.

 Los productos (Computadores, Celulares  e Impresoras) tienen un código
 que identifica el tipo de producto (A - Computadores, B - Celulares y C - Impresoras),
 un código único, marca y precio.

 Los clientes tienen un rut, nombre y edad.


 Los requerimientos son:
 1. Implementar una funcionalidad que permita el ingreso de clientes y listarlos
 2. Implementar una funcionalidad que permita el ingreso de los productos mencionados y listarlos
 3. Implementar una funcionalidad que permita realizar para un cliente, una compra de un producto
 4. Listar productos comprados para clientes mayores a 65 años.

 Notas: 
 - Si un producto fue comprado por un cliente, este producto no puede estar disponible para otro cliente. (D: Disponible, V: vendido).
- Actualmente solo hay disponibles 12 productos para la venta.

- Tabla Producto

|Tipo|Codigo|Marca|Precio|Disponibilidad |
|-------------------|------|------|------|-------|
| A                 | 1    | Acer | 20   | V     |
| B                 | 2    | Samsung | 10   | D     |
| C                 | 3    | HP   | 30| D|       
| A                 | 4    | Lenovo | 30   | D     |
| B                 | 5    | Apple | 30   | D     |
| C                 | 6    | Brother | 10   | V     |
| A                 | 7    | Dell | 20   | D     |
| B                 | 8    | Xiaomi| 10   | D     |
| C                 | 9    | Epson | 5    | D     |
| A                 | 10   | Asus | 15   | D     |
| B                 | 11   | Huawuei | 25   | V     |
| C                 | 12   | HP   | 10   | D     |

- Tabla Cliente


|Rut|Nombre|Edad|
|---|---|---|
|14554324 | Pedro | 30|
|15654876 | Maria | 25|
|20323243 | Mateo | 50|
|45343238 | Diego | 66|
|16756379 | Rosa  | 70|
|6545654  | Juan |  65|



- Tabla Compra

Ejemplo de Compra (Cada columna representa un producto as ser comprado. X representa un producto comprado)


|RUT   |  P1| P2| P3| P4| P5| P6| P7 | P8 | P9| P10| P11| P12| P13| P14| P15|
|---|---|---|---|---|---|---|----|----|---|----|----|----|----|----|----|
|14554324 |X  | - |  -|  -|  -|  X|  - |  - | - |  - |   -|   -|   -|   -|   -|
|45343238 |-  | - | - |  -|  -|  -|  - |   -| - |   -|   X|   -|   -|   -|   -|

