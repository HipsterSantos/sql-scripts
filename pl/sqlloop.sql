LOOP 

    executable_statetment
END LOOP ;

LOOP 
    FETCH company_cur INTO copany_rec;
    EXIT WHEN company_cur%ROWCOUNT > 5 OR 
    company_cur%NOTFOUND;
    proces_company(company_cur);
    END LOOP;