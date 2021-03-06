LOOP 

    executable_statetment
END LOOP ;

LOOP 
    FETCH company_cur INTO copany_rec;
    EXIT WHEN company_cur%ROWCOUNT > 5 OR 
    company_cur%NOTFOUND;
    proces_company(company_cur);
END LOOP;


#numeric for loop 

FOR  loop_index IN [REVERSE] from..to 
LOOP 
  FETCH company_cur INTO copany_rec;
    EXIT WHEN company_cur%ROWCOUNT > 5 OR 
    company_cur%NOTFOUND;
    proces_company(company_cur);
END LOOP;  

FOR collumns IN 2..20
LOOP 
    FETCH loop_index into c;
    EXIT WHEN  c >20;
END LOOP;


#cursor for loop

FOR loop_index IN [cursor_name | (SELECT statement)]
LOOP
executable_statement(s)
END LOOP;

FOR emp_re IN emp_cur
LOOP 
    IF emp_rec.title = ' Orcale PRgrammer'
    THEN 
        give_raise(emp_rec.empt_id,30)
    END IF; 
END LOOP; 

#WHILE  LOOP 
WHILE condition 
LOOP 
    executable_statetment(s)
END LOOP; 

WHILE NOT end_of_analysis
LOOP
perform_analysis;
get_next_record;
IF analysis_cursor%NOTFOUND AND next_step IS NULL
THEN
end_of_analysis := TRUE;
END IF;
END LOOP;]


#emulate repeat until 

LOOP 
    execatable_statement(s) 
    EXIT WHEN boolean_condition;
END LOOP; 


#exit when 
EXIT [WHEN condition];
EXIT WHEN  c >20;

#continue statement
CONTINUE label_name [WHEN boolean_expression];
DECLARE
TYPE dow_tab_t IS TABLE OF VARCHAR2(10);
dow_tab dow_tab_t := dow_tab_t('Sunday'
,'Monday','Tuesday','Wednesday','Thursday'
,'Friday','Saturday');
BEGIN
<<day_loop>>
FOR counter IN 2 .. 6 LOOP
--Skip Wednesdays
CONTINUE day_loop WHEN dow_tab(counter)='Wednesday';
DBMS_OUTPUT.PUT_LINE (dow_tab(counter));
END LOOP;
END;


#cursor review

BEGIN
UPDATE activity SET last_accessed := SYSDATE
WHERE UID = user_id;
IF SQL%NOTFOUND THEN
INSERT INTO activity_log (uid,last_accessed)
VALUES (user_id,SYSDATE);
END IF
END;

#exception handling 

DECLARE 
    exception_name EXCEPTION;
    

DECLARE
ObjectExists EXCEPTION;
PRAGMA EXCEPTION_INIT(ObjectExists,-955);
sql_stmt VARCHAR2(100) := 'CREATE TABLE mydual AS SELECT
* FROM dual';
BEGIN
EXECUTE IMMEDIATE sql_stmt;
-- Ignore ORA-955 errors (object already exists)
EXCEPTION WHEN ObjectExists THEN NULL;
END;