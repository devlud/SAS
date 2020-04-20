PROC SQL ; 

SELECT COUNT(*) INTO : nb_obs 
FROM table ; 

QUIT ;

DATA table ;
    SET table;

        decile = FLOOR( ( _n_ - 1 ) / ( &nb_obs. / 10 ) ) + 1 ;
RUN ;