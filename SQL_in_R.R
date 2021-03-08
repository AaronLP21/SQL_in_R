"
Programa que por a través de la biblioteca SQLDF manipula datos a través de queries de la misma 
forma como si lo hicieramos en un manejador de base de datos como MONGODB, ORACLE, AWS, SQLite,
Microsoft SQL Server, PostgreSQL, etc.

@Author : Aaron Lopez Pedraza
@Version: 1
@Date   : 20/01/2021
"
install.packages("sqldf")
library(sqldf)

data1 <- datasets::Orange
names(data1)
View(data1)

#QUERIES mas comunes en la maniulacion de datos

#SELECT
sqldf('SELECT * FROM Orange')
#WHERE
sqldf('SELECT age, circumference FROM Orange WHERE Tree = 1 ORDER BY circumference ASC')
#LIMIT
sqldf('SELECT circumference FROM Orange LIMIT 5')
#ORDER
sqldf("SELECT * FROM Orange ORDER BY age ASC, circumference DESC LIMIT 5")
#GROUP BY
sqldf("SELECT * FROM Orange GROUP BY Tree")
#AND
sqldf('SELECT * FROM Orange WHERE (age > 90 AND circumference < 80)')
#IN
sqldf('SELECT * FROM Orange WHERE circumference IN (30,120)')
#LIKE
sqldf('SELECT * FROM Orange WHERE age LIKE "%23%"')
#NOT LIKE
sqldf('SELECT * FROM Orange WHERE age NOT LIKE "%23%" LIMIT 5')
#AS
sqldf("SELECT tree, AVG(circumference) AS mean_circunference FROM Orange GROUP BY tree")


#FUNCTIONS

#AVG()
sqldf("SELECT AVG(circumference) FROM Orange")

#COUNT()
sqldf("SELECT COUNT() as numrows FROM data1")
