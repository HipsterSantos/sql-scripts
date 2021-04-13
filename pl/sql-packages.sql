-- syntax for package specification 


create or replace package package_name 
is or as 
--definition of public types
-- definition of public variables,types,and objects 
--declaretons of exceptions 
--pragmas 
--declaration of cursors ,procedres and functions
header of procedures and functions 
end package_name;


--Syntax for package body 

create or replace package body package_name 
is or as 
defitninons of private types
declaration ofo private variable,s types,and objects 
full definition of cursors 
full definitiono of procedures and functions 

BEGIN   
executable_statements 
EXCEPTION 
exception_handlers
END package_name;

create or replace package usrinfo 
is 

function minbal return varchar2; 
end usrinfo;

create or replace package body usrinfo
is 

g_minbal number --package data 
function minbar return varchar2
is 
begin 
return g_minbal;
end;

begin 
select minimum_balance 
into g_minbal
from user_configuartion
where username = USER; 

exception 
when NO_DATA_FOUND
then g_minbal := null;
end usrinfo;


