%let path=/folders/myfolders/NSFG;   * base path macro;
libname NSFG "&path/SAS_Datasets";   * create library;

/* Remember to run the other scripts to define formats */

data preg;
  set nsfg.pregdata (keep=
  CASEID
pregordr
OUTCOME
AGECON
RMAROUT6
PMARPREG
WANTRESP
WANTPART
POVERTY
LBW1
BIRTHWGT_LB1
wksgest
BGNPRENA
KNEWPREG
POSTSMKS
NPOSTSMK

  caseid sest secu wgt2015_2017);
run;  

proc EXPORT data=preg 
  outfile="&path/csv/preg.csv"
  DBMS=CSV REPLACE;
run;    

data resp;
  set nsfg.respdata (keep=
CASEID
AGER
EDUCAT
HIEDUC
HISPRACE
CSPOKDHH
ASKSMOKE
ASKPREG
ASKFOLIC
PREGNUM
COMPREG
LOSSNUM
ABORTION
LBPREGS
USUALCAR
GENHEALT
bmi
AGEBABY1
Preg_Int1
SMOKE12
DRINK12
BINGE12
POT12 
COC12 
CRACK12
CRYSTMTH12
INJECT12
PARTUM12
PRENAT12

  caseid sest secu wgt2015_2017);
run;  

proc EXPORT data=resp 
  outfile="&path/csv/resp.csv"
  DBMS=CSV REPLACE;
run;   