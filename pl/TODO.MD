====review all content 
-the basics of oracle pl/sql
-condition statement
-for loop and stored functions 


block structure 
anonymous block 
DECLARE 
today date  defaut sysdate; 
BEGIN 
dbms_ouput.put_line(q'$today is $' || today);
END 



named block

CREATE OR REPLACE PROCEDURE show_the_date
IS
    today DATE DEFAULT sysdate;
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Today is ' || today);
ENG show_the _date;


anchoring variable to another one 

DECLARE 
uname varchar2(3);
dname uname%typ;
tot_sales number(20,2) NOT NULL DEFAULT 0;
montly_sales  tot_sales%type default 10;
