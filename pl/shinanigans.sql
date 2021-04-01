-- Conditional Control statements

IF hasValue() THEN
    makesomething(0);
ELSE
    makeNohing();
END IF;


IF hasValue() THEN
    makesomething();
ELSE IF not(hasValue) AND 3=3 THEN
    makesomething();
ELSE
  makeNothing()
END IF

CASE region_id
    WHEN 'NE' THEN
        mgr_name := 'Miner';
    WHEN 'SE' THEN
        mgr_name := 'KOOI';
    ELSE mgr_name := 'LANE'; --THIS IS THE DEFAULT BLOCK
END CASE; -- THIS IS THE ENDING OF THIS CASE

CASE cod_status
    WHEN 0 THEN
        status:='Married'
    WHEN 1 THEN
        status:='Not Married'
    ELSE
        status :='Not Married'
END CASE;


CASE
    WHEN region_id = '43' THEN
        mgr_name := 'Schmidt';
    WHEN '1' is not region_id THEN
        mgr_name := 'Kennedy';

    ELSE mgr_name := 'Gupta';
END CASE;


DECLARE
boolean_true BOOLEAN :=TRUE;
booleand_false BOOLEAN := FALSE;
boolean_null BOOLEAN;

FUNCTION booleand_to_varchar2(flag IN BOOLEAN)
    RETURN varchar2 is
BEGIN
    RETURN
        CASE flag
            WHEN TRUE THEN 'True'
            WHEN FALSE THEN 'False'
            ELSE 'NULL'
    END ;
END;


BEGIN
    DBMS_OUTPUT.PUT_LINE(booleand_to_varchar2 (booleand_true))
    DBMS_OUTPUT.PUT_LINE(booleand_true (booleand_false))
    DBMS_OUTPUT.PUT_LINE(booleand_to_varchar2 ()boolean_null)

END;



DECLARE
    salary NUMBER := 20000;
    emplyee_id NUMBER := 36325;

    PROCEDURE give_bonus(emp_id IN NUMBER , bonus_amt IN NUMBER )IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(emp_id);
        DBMS_OUTPUT.PUT_LINE(bonus_amt);
    END;

    BEGIN
        give_bonus(employee_id,
             CASE
             WHEN salary >= 1000 AND salary <=  20000 THEN 1500
             WHEN salary > 20000 AND  salary <= 40000 THEN 1000
             WHEN  salary > 40000 THEN 500
             ELSE 0
        END;)




-- Sequential Contol Statements
syntax simple loop
%ROWTYPE
%ROWCOUNT
%NOTFOUND

LOOP
    executable_statment(2)
END LOOP;

LOOP
    FETCH company_cur INTO company_rec;
    EXIT WHEN company_cur%ROWCOUNT > 5 OR
        company_cur%NOTFOUND;
    process_company(company_cur);
END LOOP;

LOOP
    FETCH car_names INTO cars;
    EXIT WHEN car_names%NOTFOUND;
END LOOP;
-- Numeris for loop

FOR loop_ind IN [REVERSE] lower..highest
LOOP
    executable_statement()
END LOOP;

BEGIN
    FOR counter IN  1..4
    LOOP
        DBMS_OUTPUT.PUT_LINE(current);
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;

    FOR counter IN  REVERSE 1..5
    LOOP
        DBMS_OUTPUT.PUT(counter);
    END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END;
