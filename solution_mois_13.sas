 

%macro loop(start_month=, stop_month=);

%local month;

%do month=&start_month %to &stop_month;

%put Month: &month *** ;

%if %substr(&month, 5, 2) = 12 %then %let month = %eval(&month + 88); 

%end;

%mend loop;

%loop(start_month=200301, stop_month=201502);