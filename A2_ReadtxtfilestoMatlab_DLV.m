%% read one specific TXT file

rawdatadir = 'C:\Data\FarmData_Mining_SQL_Matlab_Files\6.ALLMILK\';

txtlist = ["MILK_tHofvandeRhille_20180212_20210202.txt"];
filename=convertStringsToChars(txtlist);
opts = detectImportOptions([rawdatadir filename]);

opts = setvartype(opts,{'BA','Number','Lac','DIM','TMY','Dest','SesNo','MDI','NotMilkedTeats','Incomplete','Kickoff','MilkType','MYLF','MYRF','MYLR','MYRR','ECLF','ECRF','ECLR','ECRR','BloodLF','BloodRF','BloodLR','BloodRR','PFLF','PFRF','PFLR','PFRR','MFLF','MFRF','MFLR','MFRR'},'double');
opts = setvartype(opts,{'BDate','Calving','BeginTime','EndTime','PEndTime'},'datetime');
opts = setvartype(opts,{'OfficialRegNo','Name'},'char');

out1 = readtable([rawdatadir filename],opts);

%% read list of TXT files

FN = ls([datadir 'MILK_*']);