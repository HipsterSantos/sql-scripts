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


-- Sequential Contol Statements

