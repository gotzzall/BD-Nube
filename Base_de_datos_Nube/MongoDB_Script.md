# MongoDB Scrips.

## Comandos.

### Mostrar las bases de datos.
`show databases`

`show dbs`

### Crear/usar una base de datos.
`use mydb`
 - mydb es el nombre de la base de datos, puede ser cualquier nombre.
 - Las bases de datos no se crean como tal, solo se "seleccionan".
 - Una base de datos está creada cuando se crea una colección.
### Crear una colección.
`db.createCollection("personas")`

### Mostrar colecciones.
`show collections`

### Insertar un documento en la colección.
```
db.persona.insertOne({
        "nombre":"José Ángel"
    })
```

### Mostrar todos los documentos.
`db.persona.find()`

### Crear una colección e insertar un documento.
```
db.personas2.insertOne({
    "nombre":"Pedro Manuel"
})
```

### Eliminar una base de datos.
`db.dropDatabase("bd1")`

`db.dropDatabase()`
- Para eliminar una base de datos, es necesario no estar dentro de dicha base.

### Insertar varios documentos.
```
db.personas.insertMany([
    {
        "nombre":"Manuel López",
        "edad":12
    },
    {
        "nombre":"Luna Cruz",
        "edad":22
    }
])
```

### Buscar documentos donde cumplan una condición.
`db.libros.fin({"editorial":{$eq:"Biblio"}})`

### Buscar documentos don de conincida con más de un valor.
`db.libros.find({clave:{$in:{["Biblio", "Planeta"]}}})`

### Mostrar el primer documento encontrado.
`db.libros.findOne()`

### Operación $and.
`db.coleccion.find({clave:{$op:valor}, clave:{$op:valor}})`

`db.coleccion.find({$and:[{clave:{$op:valor}}, {clave:{$op:valor}}]})`
- $op indica operaciones, estas pueden ser $eq, $gt, ...
- Las claves son los campos en los documentos.
- El valor son los valores de los campos.

### Operación $or.
`db.coleccion.find({$or:[{clave:{$op:valor}}, {clave:{$op:valor}}]})`
- Indica que se puede cumplor o una condición o la otra.

### Método skip.
`db.coleccion.find().skip(3)`
- Muestra los documentos pero evita los primeros tres resultados.

### Método limit().
`db.coleccion.find().limit(3)`
- Limita la cantidad de resultados que se muestran.

### Método size().
`db.colection.find().size()`
- Muestra el número de documentos que cumplan con la condición dentro del find().

### Eliminar una colección.
`db.coleccion.drop()`

### Actualizar un registro.
`db.libros.updateOne({titulo:"Json para todos"},{$set:{titulo:"Java Pro"}})`
- UpdateOne contiene dos llaves ({}, {}).
- El primer juego de llaves sirve para hacer la condición, encontrar el valor.
- El segundo juego de llaves sirve para cambiar el valor al deseado.
- Si se modifica un registro pero este no existe, mongo creará el registro.

### Actualizar mediante una condición.
`db.libros.updateMany({precio:{$gt:9}},{$set:{precio:150}})`

### Incrementar un valor numérico.
`db.libros.updateMane({},{$inc:{precio:3}})
- La instrucción incrementa 3 unidades al valor de los documentos que contengan un número.

### Multiplicar todos los registros que sean mayores a 20.
`db.libros.updateMany({cantidad:{$gt:20}}, {$mul:{precio:2}})`

### Alterar todo un documento.
`db.libros.remplaceOne({_id:10},{titulo:"El queso", precio:53})`
- Puede agregar o eliminar varios campos.

### Eliminar un documento.
`db.libros.deleteOne({titulo:"El queso"})`

### Eliminar varios documentos.
`db.libros.deleteMany({cantidad:{$gt:20}})`

### Expresiones regulares.
`db.libros.find({titulo:/t/})`

`db.libros.find({titulo:/tos$})`
- Las expresiones son lentas para evaluar y trare un resultado.

### Operadosr $regex.
`db.libros.find({titulo:{$regex:/Mongo/}})`

### Operador con opciones.
`db.libros.find({titulo:{$regex:/Mongo/, $option:'i'}})`

### Ordenar con sort().
`db.libros.find({},{titulo:1}).sort({titulo:1})`
- Para mostras el resultado ordenado de forma ascendnete, se coloca un 1 dentro del sort.
- Si se desea que el resultado sea de forma descendnete, se coloca un -1 dentro del sort.

### Ordenar varios campos.
`db.libros.find().sort({titulo:1, editorial:1})`
- Se ordena primero por el título, posteriormente se ordena editorial.

### Contar documentos.
`db.libros.countDocuments()`

### Agregaciones.
#### Encontrorart un documento.
```
db.libros.aggregate(
	[{$match: {editorial: "Biblio"}}
)
```

#### Muestra los título y precios de la editorial Biblio mediante una proyectión.
```
db.lbros.aggregate([
    {$match:{editorial:"Biblio"}}, 
    {$project:{
        _id:0, titulo:1, 
        precio:1, 
        "nombre Editorial":"$editorial"
    }}
])
```

#### Grupos con agregaciones.

```
db.libros.aggregate([
    {$group:{_id: "$editorial", "Numero documentos":{$count:{}}}},
    {$sort:{"Numero documentos":1}}
])
```

#### Agregaciones y acumuladores.
```
db.libros.aggregate([
    {$group:{id:"$editorial","numero de documentos":{$count:{}},"media":{$avg:"$precio"},"precio_maxima":{$max:"$precio"}}},
    {$sort:{"precio máximo": 1}}
])
```

#### Sacar la media media de un campo y utilizar la función $set para crear un nuevo campo.
```
db.libros.aggregate([
    {$group:{-id:"properti type", numero:{$count:{}}, "media":{$avg:"$precio"}}},
    {$set:{"media total":{$trunc:["$media", 2]}}},
    {$out: "media_editoriales"}
])
```

#### Sacar la media media de un campo y utilizar la función $set para crear un nuevo campo y el uso de $unset.
```
db.libros.aggregate([
    {$group:{-id:"properti type", numero:{$count:{}}, "media":{$avg:"$precio"}}},
    {$set:{"media total":{$trunc:["$media", 2]}}},
    {$unset: "media_editoriales"}
])
```