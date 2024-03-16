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