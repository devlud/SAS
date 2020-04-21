

table1 : reference ( petite table <= 10.000 observations )
table2 : donnees ( grande table )
;

* A and B ;

data table3 (drop=rc) ;
 if _n_=1 then do ;
 *	 format var1 var2 $32.; *A rajouter si var 1 et var 2 sont des variables caracteres;
     declare hash h( dataset: "table1" ) ;
     h.definekey('identifiant') ;
	 h.definedata(var1,var2) ;
     h.definedone() ;
     end ;
     set table2 ;
     rc=h.find() ;
     if rc ne 0 then output ;
run ; 

* not A and B ;

data table3 (drop=rc);
 if _n_=1 then do;
 	 format var1 var2 $32.;
     declare hash h(dataset: "table1");
     h.definekey('identifiant');
	 h.definedata(var1,var2);
     h.definedone();
     end;
     set table2;
     rc=h.find();
     if rc = 0 then output;
run;

