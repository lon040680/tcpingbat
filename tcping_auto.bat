set date_YY=%DATE:~0,4%
set date_MM=%DATE:~5,2%
set date_DD=%DATE:~8,2%
set time_hh=%time:~0,2%
set time_hh=0%time_hh: =%
set time_hh=%time_hh:~-2%
set time_mm=%time:~3,2%
set tDIR=存放結果的路徑
set tFILE=%tDIR%\output_%date_YY%%date_MM%%date_DD%_%time_hh%%time_mm%.txt

rem set timestamp=%date:/=%_%time::=%
rem set timestamp=%timestamp: =%
tcping -n 4 IP 443 > %tFILE%
tcping -n 4 IP 443 >> %tFILE%

