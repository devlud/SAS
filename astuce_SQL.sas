
PROC SQL;

SELECT SUM( montant * ( individu IN ( 379044852,349451484 ) ) )

FROM data ;

QUIT ;

* sum la variable montant pour lesquels individu = 349451484 ou individu = 379044852 ;

* marche qu'avec sum;