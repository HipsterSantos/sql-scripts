DECLARE 

    -- declare table-base record for company table. 
    comp_rec  company%ROWTYPE; 
    
    CURSOR comp_sumarry_cur IS 
        SELECT c.company_id,SUM(s.gross_sales) gross 
        FROM company c, sales s 
        WHERE c.company_id = s.company_id; 
    -- declarre a cursor base record 
    comp_summary_rec com_summary_cur%ROWTYPE;