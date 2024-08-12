
-- SENTENCIAS BASE DE DATOS TIENDA --

#### 1 Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM producto;

#### 2 Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre, precio FROM producto;

#### 3 Lista todas las columnas de la tabla producto.
SELECT * FROM producto;

#### 6 Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
 SELECT UPPER(nombre), precio FROM PRODUCTO;

#### 7 Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
 SELECT LOWER(nombre), precio FROM PRODUCTO;

#### 9 Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre, ROUND(precio) AS 'Precio' FROM producto;

#### 10 Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre, TRUNCATE(precio, 0) AS 'Precio' FROM producto;

#### 11 Lista el código de los fabricantes que tienen productos en la tabla producto.
SELECT f.codigo FROM fabricante f, producto p WHERE f.codigo = p.codigo_fabricante;

#### 12 Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.
SELECT DISTINCT p.codigo_fabricante FROM producto p;

#### 13 Lista los nombres de los fabricantes ordenados de forma ascendente.
SELECT nombre FROM fabricante ORDER BY nombre ASC;

#### 14 Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;

#### 15 Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre FROM producto ORDER BY nombre ASC, PRECIO DESC;

#### 16 Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;

#### 18 Lista el nombre y precio del producto más barato. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA: Aquí no podría usar MIN(precio), necesitaría GROUP BY.
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

#### 19 Lista el nombre y precio del producto más caro. (Utiliza solo las cláusulas ORDER BY y LIMIT). NOTA : Aquí no podría usar MAX(precio), necesitaría GROUP BY.
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

#### 20 Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.
SELECT nombre  FROM fabricante f WHERE f.codigo = 2;

#### 23 Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT p.codigo AS 'Código Producto', p.nombre AS 'Producto', f.codigo AS 'Código Fabricante', f.nombre AS 'Fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo;

#### 24 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
SELECT p.nombre AS 'Producto', MIN(p.precio) AS Precio, f.nombre AS 'Fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio;

#### 25 Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
SELECT p.nombre AS 'Producto', MAX(p.precio) AS Precio, f.nombre AS 'Fabricante' FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio;

#### 26 Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT p.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';

#### 27 Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
SELECT p.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' AND p.precio > 200;

#### 29 Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Utilizando el operador IN.
SELECT p.nombre FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

#### 30 Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre acabe por la vocal e.
SELECT f.nombre, p.nombre, p.precio FROM producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%e';


-- SENTENCIAS BASE DE DATOS UNIVERSIDAD --

#### 1 Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos/as. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
SELECT p.apellido1 AS 'Primer apellido', p.apellido2 AS 'Segundo apellido', p.nombre FROM persona p WHERE p.tipo = 'alumno' ORDER BY 1, 2, 3 ASC;

#### 2 Halla el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos
SELECT  p.nombre, p.apellido1 AS 'Primer apellido', p.apellido2 AS 'Segundo apellido' FROM persona p WHERE p.tipo = 'alumno' AND p.telefono IS NULL;

#### 3 Devuelve el listado de los alumnos que nacieron en 1999.
SELECT * FROM persona p WHERE year(p.fecha_nacimiento) = '1999' AND p.tipo = 'alumno';

#### 4 Devuelve el listado de profesores/as que no han dado de alta su número de teléfono en la base de datos y además su NIF termina en K.
SELECT * FROM persona p  WHERE p.tipo = 'profesor' AND p.telefono IS NULL  AND p.nif LIKE '%K' ;

#### 5 Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
SELECT * FROM asignatura a WHERE a.cuatrimestre = 1 AND a.curso = 3 AND a.id_grado = 7;

#### 6 Devuelve un listado de los profesores/as junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por apellidos y nombre.
SELECT  per.apellido1 AS 'Primer apellido', per.apellido2 AS 'Segundo apellido', per.nombre, d.nombre AS 'Departamento' FROM profesor p INNER JOIN persona per ON p.id_profesor = per.id INNER JOIN departamento d ON p.id_departamento = d.id   ORDER BY 1, 2, 3 ASC;

#### 7 Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno/a con NIF 26902806M.
SELECT a.nombre, ce.anyo_inicio AS 'Inicio', ce.anyo_fin AS 'fin' FROM asignatura a INNER JOIN alumno_se_matricula_asignatura ams ON a.id = ams.id_asignatura INNER JOIN curso_escolar ce ON ce.id = ams.id_curso_escolar INNER JOIN persona p ON p.id = ams.id_alumno WHERE p.nif = '26902806M';

#### 8 Devuelve un listado con el nombre de todos los departamentos que tienen profesores/as que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
SELECT DISTINCT d.nombre FROM departamento d INNER JOIN profesor p ON d.id = p.id_departamento  INNER JOIN asignatura a ON p.id_profesor = a.id_profesor  INNER JOIN grado g ON g.id = a.id_grado  WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';

#### 9 Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
SELECT distinct p.*,  GROUP_CONCAT(a.nombre SEPARATOR ', ') AS 'Asignaturas' ,concat(ce.anyo_inicio,' / ', ce.anyo_fin) AS 'Curso escolar' FROM persona p  JOIN alumno_se_matricula_asignatura ams ON p.id = ams.id_alumno  JOIN asignatura a ON ams.id_asignatura = a.id  JOIN curso_escolar ce ON ce.id = ams.id_curso_escolar  WHERE ce.anyo_inicio = '2018' AND ce.anyo_fin = '2019' AND p.tipo = 'alumno' GROUP BY p.nombre;

-- consultas con left y right

#### 1 Devuelve un listado con los nombres de todos los profesores/as y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores/as que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor/a. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y nombre.
SELECT d.nombre AS 'Departamento', per.apellido1 AS 'Primer apellido', per.apellido2 AS 'Segundo apellido', per.nombre AS 'Profesor'  FROM profesor p LEFT JOIN departamento d ON p.id_departamento = d.id LEFT JOIN persona per ON p.id_profesor = per.id WHERE per.tipo = 'profesor' ORDER BY 1, 2, 3, 4 ASC;

#### 2 Devuelve un listado con los profesores/as que no están asociados a un departamento.
-- La integridad de los datos son correctos todos los profesores tiene departamentos asociados => SELECT p.nombre, pr.id_departamento, d.nombre FROM persona p  JOIN profesor pr ON pr.id_profesor = p.id JOIN departamento d ON pr.id_departamento = d.id where p.tipo ='profesor';--
SELECT per.nombre AS 'Profesor sin departamento', d.nombre AS 'Departamento'  FROM profesor p  LEFT JOIN departamento d ON p.id_departamento = d.id  LEFT JOIN persona per ON p.id_profesor = per.id  WHERE  per.tipo = 'profesor' AND p.id_departamento IS NULL;

#### 3 Devuelve un listado con los departamentos que no tienen profesores asociados.
SELECT d.nombre AS 'Departamento sin profes' FROM profesor p RIGHT JOIN departamento d ON p.id_departamento = d.id WHERE p.id_departamento IS NULL;

#### 4 Devuelve un listado con los profesores/as que no imparten ninguna asignatura.
SELECT per.nombre AS 'Profe sin asignaturas' FROM profesor p  LEFT JOIN persona per ON p.id_profesor = per.id LEFT JOIN asignatura a ON a.id_profesor = per.id WHERE a.id_profesor IS NULL;

#### 5 Devuelve un listado con las asignaturas que no tienen un profesor/a asignado.
SELECT a.nombre AS 'Asignatura sin profe' FROM profesor p  right JOIN asignatura a ON a.id_profesor = p.id_profesor WHERE a.id_profesor IS NULL;


-- Consultas resumen:

#### 1 Devuelve el número total de alumnos existentes.
SELECT COUNT(p.id) AS 'Total alumnos' FROM persona p WHERE p.tipo = 'alumno';

#### 2 Calcula cuántos alumnos nacieron en 1999.
SELECT COUNT(p.id) AS 'Total alumnos', YEAR(p.fecha_nacimiento) AS 'Año nacimiento' FROM persona p WHERE p.tipo = 'alumno' AND YEAR(p.fecha_nacimiento) = '1999';

#### 3 Calcula cuántos profesores/as hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores/as que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores/as asociados y tendrá que estar ordenado de mayor a menor por el número de profesores/as.
SELECT d.nombre AS 'Departamento', COUNT(*) AS 'Numero de profesores' FROM departamento d INNER JOIN profesor p ON p.id_departamento = d.id GROUP BY d.nombre ORDER BY 2 DESC;

#### 4 Devuelve un listado con todos los departamentos y el número de profesores/as que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también deben aparecer en el listado.
SELECT d.nombre AS 'Departamento', COUNT(p.id_departamento) AS 'Numero de profesores' FROM departamento d LEFT JOIN profesor p ON p.id_departamento = d.id GROUP BY d.nombre ORDER BY 2 DESC;

#### 5 Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Ten en cuenta que pueden existir grados que carecen de asignaturas asociadas. Estos grados también deben aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
SELECT g.nombre AS 'Grado', COUNT(a.id) AS 'Numero de asignaturas' FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre ORDER BY 2 DESC;

#### 6 Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
SELECT g.nombre AS 'Grado', COUNT(a.id) AS 'Cantidad de asignaturas' FROM grado g INNER JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING COUNT(a.id) > 40;