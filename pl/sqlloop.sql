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

