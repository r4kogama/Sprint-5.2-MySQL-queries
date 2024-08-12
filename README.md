# Sprint-5.2-MySQL-queries

## Base de datos Tienda 

Tenemos las tablas producto y fabricante, cada una con los siguientes campos:
- producto (codigo, número, precio, codigo_fabricante)
- fabricante (codigo, número)
El campo 'codigo_fabricante' de la entidad producto se relaciona con el campo 'código' de la entidad fabricante.

![](https://github.com/r4kogama/Sprint-5.2-MySQL-queries/images/tienda.jpg){width='100px'}


####  Lista el nombre de todos los productos que hay en la tabla producto.

####  Lista los nombres y los precios de todos los productos de la tabla producto.

####  Lista todas las columnas de la tabla producto.

####  Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.

####  Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.

####  Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.

####  Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

####  Lista el código de los fabricantes que tienen productos en la tabla producto.

####  Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.

####  Lista los nombres de los fabricantes ordenados de forma ascendente.

####  Lista los nombres de los fabricantes ordenados de forma descendente.

####  Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.

####  Devuelve una lista con las 5 primeras filas de la tabla fabricante.

####  Lista el nombre y precio del producto más barato. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA: Aquí no podría usar MIN(precio), necesitaría GROUP BY.

####  Lista el nombre y precio del producto más caro. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA : Aquí no podría usar MAX(precio), necesitaría GROUP BY.

####  Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.

####  Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.


####  Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.


####  Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.


####  Devuelve una lista de todos los productos del fabricante Lenovo.

####  Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.

####  Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Utilizando el operador IN.

####  Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre acabe por la vocal e.



## Base de datos Universidad

La base de datos de universidad, en la imagen se pueden ver sus campos

![](https://github.com/r4kogama/Sprint-5.2-MySQL-queries/images/universidad.jpg){width='100px'}


#### 1 Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos/as. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.

#### 2 Halla el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos

#### 3 Devuelve el listado de los alumnos que nacieron en 1999.

#### 4 Devuelve el listado de profesores/as que no han dado de alta su número de teléfono en la base de datos y además su NIF termina en K.

#### 5 Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.

#### 6 Devuelve un listado de los profesores/as junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por apellidos y nombre.


#### 7 Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno/a con NIF 26902806M.


#### 8 Devuelve un listado con el nombre de todos los departamentos que tienen profesores/as que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).


#### 9 Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.


-- consultas con left y right

#### 1 Devuelve un listado con los nombres de todos los profesores/as y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores/as que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor/a. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y nombre.


#### 2 Devuelve un listado con los profesores/as que no están asociados a un departamento.


#### 3 Devuelve un listado con los departamentos que no tienen profesores asociados.

#### 4 Devuelve un listado con los profesores/as que no imparten ninguna asignatura.


#### 5 Devuelve un listado con las asignaturas que no tienen un profesor/a asignado.


-- Consultas resumen:

#### 1 Devuelve el número total de alumnos existentes.

#### 2 Calcula cuántos alumnos nacieron en 1999.


#### 3 Calcula cuántos profesores/as hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores/as que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores/as asociados y tendrá que estar ordenado de mayor a menor por el número de profesores/as.


#### 4 Devuelve un listado con todos los departamentos y el número de profesores/as que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también deben aparecer en el listado.


#### 5 Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Ten en cuenta que pueden existir grados que carecen de asignaturas asociadas. Estos grados también deben aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.


#### 6 Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.



