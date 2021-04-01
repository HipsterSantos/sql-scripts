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




-- Sequential Contol Statements

