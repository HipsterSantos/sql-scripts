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
 