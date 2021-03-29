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
TO account IDENTIFIED BY 'password'
