/*서브쿼리(Subquery)
서브쿼리 개념 한줄 요약

SQL명령문 안에 SELECT 명령문이 괄호로 있는게 서브쿼리

서브쿼리 맛보기
WHERE구에서 서브쿼리 사용하기
이해를 위해서 아주 간단한 예를 들면

아래와 같은 테이블(table1)이 있을때, 서브쿼리를 사용하여 score가 가장 낮은 no를 찾는다면 다음과 같이 할 수 있습니다.*/

CREATE TABLE table2
(

	no int,
    
    score int

);

INSERT INTO table2(no, score) VALUES(1, 90);

INSERT INTO table2(no, score) VALUES(2, 50);

INSERT INTO table2(no, score) VALUES(3, 10);

select * from table2;

SELECT no FROM table2 WHERE score = (SELECT MIN(score) FROM table2);

CREATE TABLE table3
(

	no int,
    
    score int

);

INSERT INTO table3(no, score) VALUES(1, 90);

INSERT INTO table3(no, score) VALUES(2, 70);

INSERT INTO table3(no, score) VALUES(3, 50);

INSERT INTO table3(no, score) VALUES(4, 30);

INSERT INTO table3(no, score) VALUES(5, 20);

INSERT INTO table3(no, score) VALUES(6, 0);

select * from table3;

SELECT 
(SELECT COUNT(*) FROM table2) AS sql1, 
(SELECT COUNT(*) FROM table3) AS sql2;