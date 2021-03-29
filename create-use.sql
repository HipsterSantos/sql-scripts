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
