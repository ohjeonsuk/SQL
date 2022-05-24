CREATE TABLE table1
(

    no INT,

    name VARCHAR(30),

   quantity INT

);

insert into table1(no, name, quantity) VALUES(1, 'A', 1);

insert into table1(no, name, quantity) VALUES(2, 'A', 2);

insert into table1(no, name, quantity) VALUES(3, 'B', 10);

insert into table1(no, name, quantity) VALUES(4, 'C', 3);

insert into table1(no, name, quantity) VALUES(5, null,null );

SELECT * from table1;

SELECT name FROM table1 GROUP BY name;

SELECT name, COUNT(name), SUM(quantity) FROM table1 GROUP BY name;

SELECT name, COUNT(name) FROM table1 GROUP BY name HAVING COUNT(name) = 1;