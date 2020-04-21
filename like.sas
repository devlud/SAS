/*
Il faut masquer au macro-compilateur les deux %. Pour cela, on utilisera la macro-fonction %NRQUOTE, qui masque des caractères pendant la phase de résolution (transformation du programme par le macro-compilateur)… Le macro-compilateur n’est donc intéressé que par l’expression &recherche, qui ne pose pas de problème. Il est ensuite transmis le programme correct au compilateur SAS, qui aura le droit de voir les %.
*/

%LET recherche = cle ;
 PROC PRINT DATA = sashelp.class ;
    WHERE soc LIKE "%NRQUOTE(%)&recherche%NRQUOTE(%)" ;
 RUN ;