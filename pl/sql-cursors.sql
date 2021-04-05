-- Oracle creates a memory area, known as the context area, for processing an SQL statement, 
-- which contains all the information needed for processing the statement; 
-- for example, the number of rows processed, etc.

-- A cursor is a pointer to this context area.
-- PL/SQL controls the context area through a cursor. 
-- A cursor holds the rows (one or more) returned by a SQL statement. 
-- The set of rows the cursor holds is referred to as the active set.

-- Implicit cursors
-- Explicit cursorsIn PL/SQL, 
-- you can refer to the most recent implicit cursor as the SQL cursor,
--  which always has attributes such as %FOUND, %ISOPEN, %NOTFOUND, and %ROWCOUNT.
--  The SQL cursor has additional attributes, %BULK_ROWCOUNT and %BULK_EXCEPTIONS,

DECLARE 
    total_rows  number(2);

BEGIN 
    UPDATE customers
    SET salary = salary + 500; 
    IF sql%notfound THEN 
        dbms_output.put_line('no customers selected');
    ELSE IF sql%found THEN 
        total_rows := sql%rowcount;
        dbms_output.put_line(total_rows || 'Customers selected');
    END IF;
END;

Explicit CursorsExplicit cursors are programmer-defined cursors for gaining more control over 
the context area. An explicit cursor should be defined in the declaration section of the PL/SQL Block.
 It is created on a SELECT Statement which returns more than one row.


 syntax 

 CURSOR cursor_name IS select_statement;

-- Opening the Cursor
-- Opening the cursor allocates the memory for the cursor and makes it ready for fetching the rows returned by the SQL statement into it.
-- For example, we will open the above defined cursor as follows −

 OPEN c_customers;


-- Fetching the Cursor
-- Fetching the cursor involves accessing one row at a time.
-- For example, we will fetch rows from the above-opened cursor as follows −

FETCH c_customers INTO c_id,c_name,c_addr;

Closing the Cursor
Closing the cursor means releasing the allocated memory. For example, we will close the above-opened cursor as follows −

CLOSE c_customers;

//challenge 

DECLARE 
    c_id customers.id%type;
    c_name customers.name%type;
    c_addr customers.address%type;
    CURSOR c_customers is 
        SELECT id,name,address FROM customers;

BEGIN 
    OPEN c_customers;
    LOOP
    FETCH c_customers into c_id,c_name,c_addr
        EXIT WHEN c_customers%notfound;
        dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
    END LOOP;
    CLOSE c_customers;
END;


CURSOR company_cur
    IS
    SELECT company_id FROM company; 

CREATE OR REPLACE PACKAGE PACKAGE_NAME
AS

--package specification
--package body

CREATE OR REPLACE PACKAGE time_pkg IS 
    FUNCTION GetTimestamp RETURN DATE; 
    PRAGMA RESTRIC_REFERENCE (GetTimestamp,WNDS)

