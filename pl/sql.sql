Starting with Oracle Database 10g, you can define your own
quoting mechanism for string literals in both your SQL and
PL/SQL statements. Use the characters q' (q followed by a
straight single quote) to designate the programmer-defined
delimiter
//IDENTIFIERS 
DECLARE 
    "1 ^abc" VARCHAR2(100);
BEGIN 
    IF "1 ^abc" IS NULL THEN...
END;
this "1 ^abc" is an identifier.
DECLARE 
    "just do it" number 
"just do it" is another indentifier
how to add you own literal delimiters
q' = this is how we add string or literal delimiter 
for instance: 
q'['']'
q'<Price='3'>'
q' !hey dude !'
q' - ok I''m done - '






//Datetime Interval Literals

INTERVAL '1-3' YEAR TO MONTH 1 year and 3 months later
INTERVAL '125-11' YEAR(3) TOMONTH 125 years and 11 months later
INTERVAL '-18' MONTH 18 months earlier
INTERVAL '-48' HOUR 48 hours earlier
INTERVAL '7 23:15' DAY TO
MINUTE 7 days, 23 hours, 15 minutes later

Useful oracle delimiters
: Host variable indicator
% Attribute indicator
. (Period) Component indicator (as in record.field or package.element)
@ Remote database indicator (database link)
=> Association operator (named notation)



Block Structure
Each PL/SQL program is a block consisting of a standard set
of elements, identified by keywords. The block determines the scope of declared elements and how excep-
tions are handled and propagated. A block can be anony-
mous or named. Named blocks include functions,
procedures, packages, and triggers.

#Block structure sample 

Block Header 
    IS
       Declaration section
    BEGIN
        Execution section 
    EXCEPTION
        Exception section 
    END;

DECLARE 
    today DATE DEFAULR SYSDATE;
BEGIN
 -- display the date. 
   DBMS_OUTPUT.PUT_LINE('Today is ' || today);
END;

-- the above declaration was anonymous declaration 

CREATE OR REPLACE PROCEDURE show_the_date
IS
    today DATE DEFAULT SYSDATE;
BEGIN 
    --display the date 
    DBMS_OUTPUT.PUT_LINE('Today is ' || today);
END show_the_date;

--the above decalration is called named one 

Types of pragram data
Scalar Variables made up of a single value, such as a number, date, or
Boolean.
Composite Variables made up of multiple values, such as a record, collection,
or instance of a user-defined object type. See the sections “Records
in PL/SQL,” “Collections in PL/SQL,” and “Object-Oriented
Features.”
Reference Logical pointers to values or cursors.
LOB Variables containing large object (LOB) locators.


#Variables 

total_sales     NUMBER(15,2);
emp_id          VARCHAR2(9);
company_number  NUMBER;
book_title      VARCHAR2;


#constants
min_order_qty       NUMBER(1) CONSTANT := 5;

#Attributing a value using default or :=
counter BINARY_INTEGER := 0;
priority VARCHAR2(8)    DEFAULT 'LOW';




#Anchored Declarions 

Use the %TYPE attribute to anchor the datatype of a scalar
variable to either another variable or to a column in a data-
base table or view.%ROWTYPE to anchor a record’s
declaration to a cursor or table (see the later section,
“Records in PL/SQL,” for more details on the %ROWTYPE
attribute).

Sample of anchored declartions 

DECLARE 
    tot_sales NUMBER(20,2);
    --anchor to a pl/sql varibla 
    monthly_sales  tot_sales%TYPE;

    --Anchor to a database colum. 
    v_ename employee.last_name%TYPE.;

    CURSOR mycur IS
    SELECT * FROM employee 

    --anchor to a cursor
    myrec mycur%ROWTYPE;



    #Programmer-defined subtypes 
    sample :


    CREATE OR REPLACE PACKAGE std_types
    IS

    -- Declare standard types as globals. 
    SUBTYPE dollar_amt_t IS NUMBER;
    END std_types;

    CREATE OR REPLACE PROCEDURE process_money
    IS
        --use the global type declared above. 
        credit std_types.dollar_amt_t;


    SUBTYPE POSITIVE IS BINARY_INTEGER RANGE 1.. 214748647;
    PACKAGE std_types
    IS
        SUBTYPE  currency_t IS NUMBER(15,2);
    END;


    #Conditional and Sequential Control

    CASE region_id
        WHEN 'NE' THEN
            mgr_name := 'MINER';
        WHEN 'SE' THEN
            mgr_name := 'KooI';
        ELSE mgr_name := 'Lane';
    END CASE;

    --casing withoud switch 
    CASE 
    WHEN region_id := 'eame' THEN
        mgr_name := 'SCHMIDT';
    WHEN division = 'sales' THEN 
        mrg_name :='Kennedy';
    ELSE mgr_name := 'gupta';
    END CASE;


    #Loops 
There are three types of loops: simple
(infinite), FOR, and WHILE.You can use the EXIT statement to break out of the LOOP
and pass control to the statement following the END LOOP.

Use the CONTINUE statement (Oracle Database 11g),
described later, to break out of the current loop iteration and
pass control to the next loop iteration.

Sample: 

LOOP
    executable_statement(s)
END LOOP;


LOOP
    FETCH company_cur INTO company_rec;
    EXIT WHEN company_cur%ROWCOUNT > 5 OR
        company_cur%NOTFOUND; 
        process_company(company_cur);
END LOOP;

FOR index IN 1..4
LOOP 
  statement here
END LOOP;
