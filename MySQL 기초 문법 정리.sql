/*데이터 베이스 생성
CREATE DATABASE [database name] CHARACTER SET [character set];*/

CREATE DATABASE Account CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

/*데이터베이스 선택
USE [database name];*/
USE Account;

/*데이터베이스 삭제
DROP DATABASE [database name];*/
DROP DATABASE Account;

/*테이블 생성
CREATE TABLE [table name] ([column1 name][datatype], …);*/
CREATE TABLE User
(

    ID INT,

    Name VARCHAR(30),

    BirthDay DATE,
    
    Age INT

);

/*테이블 삭제
DROP TABLE [table name];*/
DROP TABLE User;

/*테이블에 필드(열) 추가
ALTER TABLE [table name] ADD [column name][datatype];*/
ALTER TABLE User ADD PhoneNumber INT;

/*테이블 필드(열) 타입 변경
ALTER TABLE [table name] MODIFY COLUMN [column name][datatype];*/
ALTER TABLE User MODIFY ID VARCHAR(20);

/*테이블 필드(열) 삭제
ALTER TABLE [table name] DROP [column name];*/
ALTER TABLE User DROP Age;

/*테이블에 레코드(행) 추가
INSERT INTO [table name] VALUES (value1, value2, value3…);*/
INSERT INTO User(ID, Name, BirthDay) VALUES(1, '김태하', '1992-11-04');

/*테이블의 레코드(행) 선택
SELECT * FROM [table];*/
SELECT * FROM User;

/*테이블의 레코드(행) 내용 수정
UPDATE [table] SET [column]=[value] WHERE [condition];*/
UPDATE User SET Age = 30 WHERE Name = '김태하';

/*테이블의 레코드(행) 삭제
DELETE FROM [table] WHERE [condition];*/
DELETE FROM User WHERE Name = '김태하';

/*Join 기본 문법
SELECT
테이블이름.조회할 테이블,
테이블이름.조회할 테이블
FROM 기준테이블 이름
(INNER, LEFT, RIGHT FULL) JOIN 조인테이블 이름
ON 기준테이블이름.기준키 = 조인테이블이름.기준키;*/
SELECT users.id, users.name, users.age, users.gender, accounts.account_type 
FROM users JOIN accounts ON accounts.id = users.account_id;

