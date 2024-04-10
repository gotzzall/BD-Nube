# Actividad de Evaluación. Practica de Agregaciones.

## Ejercicios.
1. Cuenta los productos de tipo “medio”, usando un método básico
`db.productos.find({"tipo": "medio"})`

    salida
    ```
    {
        _id: ObjectId('6614aba849e35cf983765d6d'),
        codigo: 1,
        nombre: 'Rustic Concrete Pants',
        unidades: 66,
        precio: 279,
        fabricante: 'Mercury General',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d6e'),
        codigo: 2,
        nombre: 'Small Soft Fish',
        unidades: 96,
        precio: 189,
        fabricante: 'Primoris Services',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d70'),
        codigo: 4,
        nombre: 'Ergonomic Metal Ball',
        unidades: 5,
        precio: 246,
        fabricante: 'Seaboard',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d73'),
        codigo: 7,
        nombre: 'Handmade Steel Chair',
        unidades: 16,
        precio: 337,
        fabricante: 'CIT Group',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d76'),
        codigo: 10,
        nombre: 'Handmade Plastic Hat',
        unidades: 7,
        precio: 253,
        fabricante: "Dick's Sporting Goods",
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d7a'),
        codigo: 14,
        nombre: 'Small Concrete Fish',
        unidades: 40,
        precio: 126,
        fabricante: 'Precision Castparts',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d7f'),
        codigo: 19,
        nombre: 'Handcrafted Steel Chicken',
        unidades: 55,
        precio: 113,
        fabricante: 'State Street Corp.',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d83'),
        codigo: 23,
        nombre: 'Handcrafted Metal Tuna',
        unidades: 63,
        precio: 320,
        fabricante: 'Williams-Sonoma',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d86'),
        codigo: 26,
        nombre: 'Intelligent Plastic Bike',
        unidades: 39,
        precio: 241,
        fabricante: 'Tractor Supply',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d88'),
        codigo: 28,
        nombre: 'Handcrafted Granite Cheese',
        unidades: 27,
        precio: 304,
        fabricante: 'Lennar',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d89'),
        codigo: 29,
        nombre: 'Unbranded Soft Computer',
        unidades: 33,
        precio: 69,
        fabricante: 'Delta Tucker Holdings',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d8b'),
        codigo: 31,
        nombre: 'Generic Fresh Keyboard',
        unidades: 69,
        precio: 16,
        fabricante: 'WestRock',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d8c'),
        codigo: 32,
        nombre: 'Sleek Soft Towels',
        unidades: 68,
        precio: 68,
        fabricante: 'Alere',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d8e'),
        codigo: 34,
        nombre: 'Practical Cotton Keyboard',
        unidades: 43,
        precio: 25,
        fabricante: 'AutoNation',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d90'),
        codigo: 36,
        nombre: 'Rustic Soft Table',
        unidades: 73,
        precio: 331,
        fabricante: 'Werner Enterprises',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d93'),
        codigo: 39,
        nombre: 'Handmade Soft Chips',
        unidades: 56,
        precio: 208,
        fabricante: 'State Farm Insurance Cos.',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d94'),
        codigo: 40,
        nombre: 'Handmade Frozen Salad',
        unidades: 13,
        precio: 85,
        fabricante: 'Nordstrom',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d96'),
        codigo: 42,
        nombre: 'Licensed Granite Ball',
        unidades: 74,
        precio: 92,
        fabricante: 'SunPower',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d9b'),
        codigo: 47,
        nombre: 'Practical Frozen Chips',
        unidades: 0,
        precio: 305,
        fabricante: 'Delta Air Lines',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d9e'),
        codigo: 50,
        nombre: 'Awesome Frozen Shoes',
        unidades: 33,
        precio: 125,
        fabricante: 'Comerica',
        tipo: 'medio'
    }
    ```

2. Indicar con un distinct, las empresas (fabricantes) que hay en la colección
`db.productos.distinct("fabricante")`

    salida
    ```
    'A.O. Smith',
    'Alere',
    'American Tire Distributors Holdings',
    'Anthem',
    'Archrock',
    'Ascena Retail Group',
    'AutoNation',
    'Best Buy',
    'CIT Group',
    'Cabot',
    'Comcast',
    'Comerica',
    'Core-Mark Holding',
    'DST Systems',
    'Darling Ingredients',
    'Delta Air Lines',
    'Delta Tucker Holdings',
    "Dick's Sporting Goods",
    'First Solar',
    'HCA Holdings',
    'Hanesbrands',
    'Hartford Financial Services Group',
    'Hawaiian Holdings',
    'HealthSouth',
    'Hyatt Hotels',
    'Kar Auction Services',
    'Kelly Services',
    'Kemper',
    'Kimberly-Clark',
    'Lennar',
    'Mercury General',
    'Mondelez International',
    'Motorola Solutions',
    'Nasdaq OMX Group',
    'National Oilwell Varco',
    'Nordstrom',
    'OneMain Holdings',
    'Oneok',
    'Orbital ATK',
    'Pep Boys-Mann',
    'Pool',
    'Precision Castparts',
    'Primoris Services',
    'Raymond James Financial',
    'Seaboard',
    'Securian Financial Group',
    'Simon Property Group',
    'State Farm Insurance Cos.',
    'State Street Corp.',
    'SunPower',
    'TEGNA',
    'Telephone & Data Systems',
    'Total System Services',
    'Tractor Supply',
    'TransDigm Group',
    'Trinity Industries',
    'TrueBlue',
    'Universal American',
    'Universal Health Services',
    'WGL Holdings',
    "Wendy's",
    'Werner Enterprises',
    'WestRock',
    'Williams-Sonoma'
    ```

3. Usando aggregate, visualizar los productos que tengan más de 80 unidades
`db.productos.aggregate([{$match: {"unidades": {$gt: 80}}}])`

    salida
    ```
    {
        _id: ObjectId('6614aba849e35cf983765d6c'),
        codigo: 0,
        nombre: 'Fantastic Wooden Fish',
        unidades: 95,
        precio: 291,
        fabricante: 'Kimberly-Clark',
        tipo: 'avanzado'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d6e'),
        codigo: 2,
        nombre: 'Small Soft Fish',
        unidades: 96,
        precio: 189,
        fabricante: 'Primoris Services',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d78'),
        codigo: 12,
        nombre: 'Refined Concrete Salad',
        unidades: 90,
        precio: 129,
        fabricante: 'Universal Health Services',
        tipo: 'avanzado'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d8a'),
        codigo: 30,
        nombre: 'Small Rubber Pants',
        unidades: 89,
        precio: 16,
        fabricante: 'Hanesbrands',
        tipo: 'basico'
    },
    {
        _id: ObjectId('6614aba849e35cf983765d8d'),
        codigo: 33,
        nombre: 'Generic Concrete Hat',
        unidades: 82,
        precio: 70,
        fabricante: 'American Tire Distributors Holdings',
        tipo: 'basico'
    },
    {
        _id: ObjectId('6614aba849e35cf983765da1'),
        codigo: 53,
        nombre: 'Licensed Plastic Hat',
        unidades: 96,
        precio: 38,
        fabricante: 'Best Buy',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765da2'),
        codigo: 54,
        nombre: 'Generic Metal Sausages',
        unidades: 84,
        precio: 77,
        fabricante: 'DST Systems',
        tipo: 'medio'
    },
    {
        _id: ObjectId('6614aba849e35cf983765da9'),
        codigo: 61,
        nombre: 'Sleek Rubber Keyboard',
        unidades: 82,
        precio: 33,
        fabricante: 'Alere',
        tipo: 'basico'
    },
    {
        _id: ObjectId('6614aba849e35cf983765dae'),
        codigo: 66,
        nombre: 'Incredible Concrete Fish',
        unidades: 96,
        precio: 336,
        fabricante: 'Darling Ingredients',
        tipo: 'medio'
    }
    ```

4.  Con $project visualizar solo el nombre, unidades y precio de los productos que tengan menos de 10 unidades
    ```
    $match{"unidades": {$lt: 10}}
    $project{_id:0, nombre: 1, unidades: 1, precio: 1}
    ```
    salida

    ```
    nombre: "Ergonomic Metal Ball"
    unidades: 5
    precio: 246
    nombre: "Handmade Plastic Hat"
    unidades: 7
    precio: 253
    nombre: "Ergonomic Metal Table"
    unidades: 0
    precio: 94
    nombre: "Practical Frozen Chips"
    unidades: 0
    precio: 305
    nombre: "Fantastic Metal Pants"
    unidades: 5
    precio: 129
    nombre: "Intelligent Frozen Sausages"
    unidades: 3
    precio: 111
    nombre:"Rustic Plastic Mouse"
    unidades: 5
    precio: 24
    ```

5. Con $project ponemos el fabricante, pero le cambiamos el nombre por “empresa”. Usamos el mismo comando anterior
    ```
    $match{"unidades": {$lt: 10}}
    $project{_id:0, nombre: 1, unidades: 1, precio: 1, "empresa": "$fabricante"}
    ```

    salida

    ```
    nombre: "Ergonomic Metal Ball"
    unidades: 5
    precio: 246
    empresa: "Seaboard"
    nombre: "Handmade Plastic Hat"
    unidades: 7
    precio: 253
    empresa: "Dick's Sporting Goods"
    nombre: "Ergonomic Metal Table"
    unidades: 0
    precio: 94
    empresa: "Kelly Services"
    nombre: "Practical Frozen Chips"
    unidades: 0
    precio: 305
    empresa: "Delta Air Lines"
    nombre: "Fantastic Metal Pants"
    unidades: 5
    precio: 129
    empresa: "OneMain Holdings"
    nombre: "Intelligent Frozen Sausages"
    unidades: 3
    precio: 111
    empresa: "A.O. Smith"
    nombre: "Rustic Plastic Mouse"
    unidades: 5
    precio: 24
    empresa: "Orbital ATK"
    ```

6. Añadir a la consulta anterior un campo calculado que se llame total y que multiplique precio por unidades.
    ```
    $match{"unidades": {$lt: 10}}
    $project{_id:0, nombre: 1, unidades: 1, precio: 1, "empresa": "$fabricante", "total":{$multiply:["$unidades", "$precio"]}}
    ```

    salida

    ```
    nombre
    "Ergonomic Metal Ball"
    unidades
    5
    precio
    246
    empresa
    "Seaboard"
    total
    1230
    nombre
    "Handmade Plastic Hat"
    unidades
    7
    precio
    253
    empresa
    "Dick's Sporting Goods"
    total
    1771
    nombre
    "Ergonomic Metal Table"
    unidades
    0
    precio
    94
    empresa
    "Kelly Services"
    total
    0
    nombre
    "Practical Frozen Chips"
    unidades
    0
    precio
    305
    empresa
    "Delta Air Lines"
    total
    0
    nombre
    "Fantastic Metal Pants"
    unidades
    5
    precio
    129
    empresa
    "OneMain Holdings"
    total
    645
    nombre
    "Intelligent Frozen Sausages"
    unidades
    3
    precio
    111
    empresa
    "A.O. Smith"
    total
    333
    nombre
    "Rustic Plastic Mouse"
    unidades
    5
    precio
    24
    empresa
    "Orbital ATK"
    total
    120
    ```

7. Hacer que el nombre salga en mayúsculas con el operador $toUpper 
    ```
    $match{"unidades": {$lt: 10}}
    $project{_id:0, nombre: {$toUpper:"$nombre"}, unidades: 1, precio: 1, "empresa": "$fabricante", "total":{$multiply:["$unidades", "$precio"]}}
    ```

    salida

    ```
    unidades
    5
    precio
    246
    nombre
    "ERGONOMIC METAL BALL"
    empresa
    "Seaboard"
    total
    1230
    unidades
    7
    precio
    253
    nombre
    "HANDMADE PLASTIC HAT"
    empresa
    "Dick's Sporting Goods"
    total
    1771
    unidades
    0
    precio
    94
    nombre
    "ERGONOMIC METAL TABLE"
    empresa
    "Kelly Services"
    total
    0
    unidades
    0
    precio
    305
    nombre
    "PRACTICAL FROZEN CHIPS"
    empresa
    "Delta Air Lines"
    total
    0
    unidades
    5
    precio
    129
    nombre
    "FANTASTIC METAL PANTS"
    empresa
    "OneMain Holdings"
    total
    645
    unidades
    3
    precio
    111
    nombre
    "INTELLIGENT FROZEN SAUSAGES"
    empresa
    "A.O. Smith"
    total
    333
    unidades
    5
    precio
    24
    nombre
    "RUSTIC PLASTIC MOUSE"
    empresa
    "Orbital ATK"
    total
    120
    ```

8. Añadir un campo calculado que ponga el nombre del producto y el tipo concatenado
con el operador $concat. Le llamamos al campo “completo”
    ```
    $match{"unidades": {$lt: 10}}
    $project{
                _id:0, 
                nombre: {$toUpper:"$nombre"}, 
                unidades: 1, 
                precio: 1, "empresa": "$fabricante", 
                "total":{$multiply:["$unidades", "$precio"]}},
    "completo":{$concat:["$nombre"," ", "$tipo"]}
    ```
    Salida:
    ```
    unidades: 5,
    precio: 246
    nombre: "ERGONOMIC METAL BALL"
    empresa: "Seaboard"
    total: 1230
    completo
    "Ergonomic Metal Ball medio"
    unidades
    7
    precio
    253
    nombre
    "HANDMADE PLASTIC HAT"
    empresa
    "Dick's Sporting Goods"
    total
    1771
    completo
    "Handmade Plastic Hat medio"
    unidades
    0
    precio
    94
    nombre
    "ERGONOMIC METAL TABLE"
    empresa
    "Kelly Services"
    total
    0
    completo
    "Ergonomic Metal Table avanzado"
    unidades
    0
    precio
    305
    nombre
    "PRACTICAL FROZEN CHIPS"
    empresa
    "Delta Air Lines"
    total
    0
    completo
    "Practical Frozen Chips medio"
    unidades
    5
    precio
    129
    nombre
    "FANTASTIC METAL PANTS"
    empresa
    "OneMain Holdings"
    total
    645
    completo
    "Fantastic Metal Pants basico"
    unidades
    3
    precio
    111
    nombre
    "INTELLIGENT FROZEN SAUSAGES"
    empresa
    "A.O. Smith"
    total
    333field1: sortOrder
    completo
    "Intelligent Frozen Sausages basico"
    unidades
    5
    precio
    24
    nombre
    "RUSTIC PLASTIC MOUSE"
    empresa
    "Orbital ATK"
    total
    120
    completo
    "Rustic Plastic Mouse avanzado"
    ```

9. Ordena el resultado por el campo “total”
    ```
    $match{"unidades": {$lt: 10}}
    $project{
                _id:0, 
                nombre: {$toUpper:"$nombre"}, 
                unidades: 1, 
                precio: 1, "empresa": "$fabricante", 
                "total":{$multiply:["$unidades", "$precio"]}},
                "completo":{$concat:["$nombre"," ", "$tipo"]
            }
    $sort{"total": 1}
    ```
    Salida
    ```
    unidades
    0
    precio
    94
    nombre
    "ERGONOMIC METAL TABLE"
    empresa
    "Kelly Services"
    total
    0
    completo
    "Ergonomic Metal Table avanzado"
    unidades
    0
    precio
    305
    nombre
    "PRACTICAL FROZEN CHIPS"
    empresa
    "Delta Air Lines"
    total
    0
    completo
    "Practical Frozen Chips medio"
    unidades
    5
    precio
    24
    nombre
    "RUSTIC PLASTIC MOUSE"
    empresa
    "Orbital ATK"
    total
    120
    completo
    "Rustic Plastic Mouse avanzado"
    unidades
    3
    precio
    111
    nombre
    "INTELLIGENT FROZEN SAUSAGES"
    empresa
    "A.O. Smith"
    total
    333
    completo
    "Intelligent Frozen Sausages basico"
    unidades
    5
    precio
    129
    nombre
    "FANTASTIC METAL PANTS"
    empresa
    "OneMain Holdings"
    total
    645
    completo
    "Fantastic Metal Pants basico"
    unidades
    5
    precio
    246
    nombre
    "ERGONOMIC METAL BALL"
    empresa
    "Seaboard"
    total
    1230
    completo
    "Ergonomic Metal Ball medio"
    unidades
    7
    precio
    253
    nombre
    "HANDMADE PLASTIC HAT"
    empresa
    "Dick's Sporting Goods"
    total
    1771
    completo
    "Handmade Plastic Hat medio"
    ```

10. Haciendo una nueva consulta, averiguar el numero de productos por tipo de producto
    ```
    $group{
        _id: "$tipo",
        "cantidad":{$count:{}}
    }
    ```

    salida
    ```
    _id: "avanzado"
    cantidad: 18

    _id: "medio"
    cantidad: 25

    _id: "basico"
    cantidad: 24
    ```

11. Añadir el valor mayor y el menor
    ```
    $group{
        _id: "$tipo",
        "cantidad":{
            $count:{}
        },
    }
    $group{
        _id: "$tipo",
        "maximo": {
            $max: "$cantidad"
        },
        "minimo": {
            $min: "$cantidad"
        }
    }
    ```

    salida
    ```
    _id: null
    maximo: 25
    minimo: 18
    ```

12. Añade el total de unidades por cada tipo
    ```
    $group{
        _id: "$tipo",
        "cantidad":{
            $count:{}
        },
        "Total de unidades": {
            $sum: "$unidades"
        }
    }
    ```

    salida
    ```
    _id: "avanzado",
    cantidad: 18
    Total de unidades: 773

    _id
    "medio"
    cantidad
    25
    Total de unidades
    1224
    _id
    "basico"
    cantidad
    24
    Total de unidades
    1067
    ```

13. Con el operador $set y el operador “$substr” visualiza todos los datos del producto "Small Metal Tuna" y los primeros 5 caracteres del nombre

    ```
    match: {
    "nombre": "Small Metal Tuna"
    }
    set: {
        "caracteres": {
            $substr: ["$nombre", 0, 6]
        }
    }
    ```
    salida
    ```
    "_id": {
        "$oid": "6614aba849e35cf983765da3"
    },
    "codigo": 55,
    "nombre": "Small Metal Tuna",
    "unidades": 46,
    "precio": 43,
    "fabricante": "Raymond James Financial",
    "tipo": "medio",
    "caracteres": "Small "
    ```
14, 15. Creamos una salida que tenga el nombre del articulo y el total (precio por unidades) y lo guardamos en una colección denominada productos2
    ```
        {
    _id: 0,
        nombre: 1,
    "total":{$multiply: ["$unidades", "$precio"]}
    }
    ```

    salida

    ```
    nombre
    "Fantastic Wooden Fish"
    total
    27645
    nombre
    "Rustic Concrete Pants"
    total
    18414
    nombre
    "Small Soft Fish"
    total
    18144
    nombre
    "Practical Soft Pants"
    total
    2747
    nombre
    "Ergonomic Metal Ball"
    total
    1230
    nombre
    "Small Steel Gloves"
    total
    1665
    nombre
    "Ergonomic Wooden Shirt"
    total
    14994
    nombre
    "Handmade Steel Chair"
    total
    5392
    nombre
    "Handcrafted Soft Gloves"
    total
    4512
    nombre
    "Fantastic Concrete Salad"
    total
    12985
    ```

16. Comprobamos que se ha creado
    ```
    db.getCollectionNames().includes("productos2");
    ```
    salida

    ```
    true
    ``` 

17. Hacemos un find para comprobar el resultado
    ```
    db.productos2.find()
    ```

    salida

    ```
    {
        _id: ObjectId('6616167de6fa02f8471c1b62'),
        nombre: 'Fantastic Wooden Fish',
        total: 27645
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b63'),
        nombre: 'Rustic Concrete Pants',
        total: 18414
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b64'),
        nombre: 'Small Soft Fish',
        total: 18144
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b65'),
        nombre: 'Practical Soft Pants',
        total: 2747
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b66'),
        nombre: 'Ergonomic Metal Ball',
        total: 1230
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b67'),
        nombre: 'Small Steel Gloves',
        total: 1665
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b68'),
        nombre: 'Ergonomic Wooden Shirt',
        total: 14994
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b69'),
        nombre: 'Handmade Steel Chair',
        total: 5392
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6a'),
        nombre: 'Handcrafted Soft Gloves',
        total: 4512
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6b'),
        nombre: 'Fantastic Concrete Salad',
        total: 12985
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6c'),
        nombre: 'Handmade Plastic Hat',
        total: 1771
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6d'),
        nombre: 'Refined Wooden Tuna',
        total: 8480
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6e'),
        nombre: 'Refined Concrete Salad',
        total: 11610
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b6f'),
        nombre: 'Unbranded Soft Fish',
        total: 9434
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b70'),
        nombre: 'Small Concrete Fish',
        total: 5040
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b71'),
        nombre: 'Refined Concrete Bike',
        total: 2700
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b72'),
        nombre: 'Tasty Cotton Pants',
        total: 3536
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b73'),
        nombre: 'Incredible Granite Gloves',
        total: 20590
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b74'),
        nombre: 'Practical Metal Mouse',
        total: 6650
    },
    {
        _id: ObjectId('6616167de6fa02f8471c1b75'),
        nombre: 'Handcrafted Steel Chicken',
        total: 6215
    }
    ```