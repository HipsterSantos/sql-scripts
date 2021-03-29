-- CREATE USER account [identified by 'password']  this is the syntax to create a user on sql languages
CREATE USER 'boris'@'localhost' IDENTIFIED BY 'fronst'
CREATE USER 'FREet'@'demo.demo.co' IDENTIFIED BY 'stream';
-- By doing in this way we're specifying the location where user can accsess ,how do I anble user ,anywhere as location

CREATE USER 'max'@'%' IDENTIFIED BY 'mistitc';
CREATE USER 'MAXXAXX'@'%' IDENTIFIED BY 'noone';

-- these are wildcars % and _ it really means *
CREATE USER 'juese'@'%.sname.io' IDENTIFIED BY 'none';
CREATE USER 'JOE'@'192.168.128.3' IDENTIFIED BY 'water';

--Granting previlegies to users

GRANT create,insert,update,alter(previlegies) *.*(colums)
ON what(database.table|view|index|function|storedprocedure)
TO account
IDENTIFIED BY 'password'

CREATE USER 'ethel1'@'localhost' IDENTIFIED BY 'coffee';
GRANT ALL ON *.* TO 'ethel'@'localhost' WITH GRANT OPTION;
GRANT RELOAD ON database_name.table  TO 'noone'@'local.local.io';


CREATE USER 'jennie'@'%' IDENTIFIED BY 'carbon'
GRANT SELECT,INSERT,DELETE,UPDATE ON sampdb.* TO 'jennie'@'%';
--granting access for individuals tables and colums
CREATE USER 'assistant'@'localhost' IDENTIFIED BY 'officalhelp';
GRANT SELECT,UPDATE(expiration,street,city,state,zip) ON sampdb.member TO 'assistant'@'localhost';



====  CREATING A DATABASE ====

CREATE DATABASE IF NOT EXISTS db_name
CHARSET utf8
DEFAULT COLLATION utf8_general_ci;

SHOW CREAE DATABASE;

=== DROP A DATABSE ===
DROP DATABASE db_name;

===ALTERING  DATABASE
ALTER DATABASE [db_name] [CHARACTER SET charset] [COLLATE collation];


-- CREATE TABLE

CREATE TABLE mytbl(

  name CHAR(20),
  birth DATE NOT NULL,
  weight INT,
  sex    ENUM('F','M')
)ENGINE=innoDB;

---Create a temporay tables

CREATE TEMPORARY TABLE tbl_name;

-- FOR CREATING AN EMPTY COPY OF AN EXISTING TABLE, WRITE A STATEMENT LIKE:
CREATE TABLE tablename LIKE cars;
--creata table ang allow access by using connection string
CREATE TABLE federated_student(

  name varchar(20) not null,
  sex enum('F','M') NOT NULL,
  student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (student_id)
)ENGINE=FEDERATED
CONNECTION = 'mysql://sampadm:secret@corn.snake.net/sampdb/student';


CREATE SERVER corn_sampdb_server
FOREIGN DATA WRAPPER mysql
OPTIONS (
USER 'sampadm',
PASSWORD 'secret',
HOST 'corn.snake.net',
DATABASE 'sampdb'
);


CREATE TABLE federated_student2
(
name
VARCHAR(20) NOT NULL,
sex
ENUM('F','M') NOT NULL,
student_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
PRIMARY KEY (student_id)
) ENGINE = FEDERATED
CONNECTION = 'corn_sampdb_server/student';


--droping table
DROP TABLE tbl_nam3;
DROP TABLE tbl_name1,tbl_name2;
DROP TABLE IF EXISTS tbl_name;

--creating index by altering a table

ALTER TABLE tbl_name ADD INDEX index_name (index_columns);
ALTER TABLE tbl_name ADD UNIQUE index_name (index_colms);
ALTER TABLE  tbl_name ADD PRIMARY KEY (index_colums);


CREATE INDEX index_name ON tbl_name (index_columns);
CREATE FULLTEXT INDEX  index_name ON tbl_name (index_colums)
CREATE SPATIAL INDEX index_name ON tbl_name (index_colums)
CREATE UNIQUE INDEX index_name ON tbl_name (index_columns);


--altering table structure

ALTER TABLE mytbl CHANGE  i k MEDIUMINT UNSIGNED;
ALTER TABLE tableName MODIFY c CHAR(20) CHARACTER SET ucs2;
ALTER TABLE tbname ENGINE = engine_name;
RENAME TABLE firstname TO formername,formername TO latername


--The inner join

SELECT * FROM t1 INNER JOIN t2;
SELECT t1.*, t2.* FROM t1 INNER JOIN t2 WHERE t1.il = ts.i2;
SELECT t1.*,t2.* FROM t1 INNER JOIN  ON  t1.i1 = ts.i2;

=== Transaction ===
CREATE TABLE t (name CHAR(20),UNIQUE (name))ENGINE = InnoDB;

START TRANSACTION ;
INSERT INTO t SET name="Wilia";
INSERT INTO t SET  name ='Wallace'
COMMIT;

SELECT * FROM t;


--using the rollback to avoind erros

START TRANSACTION ;
INSERT INTO t SET name = 'Gromit';
INSERT INTO t SET name = 'Wallace';
ROLLBACK;
SELECT * FROM T ;
