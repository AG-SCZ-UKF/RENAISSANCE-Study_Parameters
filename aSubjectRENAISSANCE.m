function aSubject = aSubjectATWM1()

%{
aSubject.ATWM1_PSYPHY_EXP1 = {
    'BAUL86'
	'BOLL82'
	'ENLL87'
	'HRES81'
	'IZFA77'
	'KILA87'
	'NDAN84'
	'REIX91'
	'RSAN85'
	'RTAM92'
	'SECY83'
	'TZNA88'
     };
aSubject.ATWM1_PSYPHY_EXP1 = sort(aSubject.ATWM1_PSYPHY_EXP1);

aSubject.ATWM1_PSYPHY_EXP2 = {
	'BAUL86'
	'BOLL82'
	'EKOR88'
	'ELRL87'
	'ENLL87'
	'ERKE92'
	'NDAN84'
	'OSOS78'
	'REIX91'
	'RSAN85'
	'TZNA88'
     };
aSubject.ATWM1_PSYPHY_EXP2 = sort(aSubject.ATWM1_PSYPHY_EXP2);

aSubject.ATWM1_PSYPHY_EXP3 = {
	'BAUL86'
	'BOLL82'
	'EKOR88'
	'ELRL87'
	'ENLL87'
	'OSOS78'
	'REIX91'
	'RSAN85'
	'TZNA88'
	'USEL89'
	'USER89'
     };
aSubject.ATWM1_PSYPHY_EXP3 = sort(aSubject.ATWM1_PSYPHY_EXP3);

aSubject.ATWM1_PSYPHY_EXP4 = {
    'AKAN86'
    'ARAN80'
    'ARUL79'
	'BAUL86'
    'CHNA89'
    'HNER86'
    'ICDI86'
    'OSOS78'
    'REIX91'
    'RSAN85'
     };
aSubject.ATWM1_PSYPHY_EXP4 = sort(aSubject.ATWM1_PSYPHY_EXP4);

aSubject.ATWM1_PSY_EXP7 = {
    
    %'HTIE93'
    %'ANGELIKA_TEST'
    %'SANDY_TEST'
    %'SUSAN_TEST'
    %'TEST_LISA'
    'NAGI74'
    'VAMI82'
    'ELAS75'
    'KEEL72'
    'ISIT91';
    %'LARA_TEST'}
    %'AKNA86'
    };
aSubject.ATWM1_PSYPHY_EXP7 = sort(aSubject.ATWM1_PSY_EXP7);
%}
%%Patients
%{
aSubject.ATWM1_PSY_EXP8 = {
    %PSZ
    'CHAN22'
    'ERRG90'
    'ERHY85'
    'ERIC89'
    'ERNA90'
    'LEIN75'
    'LIED76'
    'AXSA74'
    'NANG82'
    'CHAN64'
    'ERNE64'
    'NKNZ77'
    'FFWE66'
    'ILAS80'
    'TAHA90'
    'ELAS75'
    'ERRA71'
    'EVEL82'
    'TTKE87'
    'OBON81'
    'ELAN88'
    'ERUS72'
    'NION84'
    'CHNA87'
    'LKIS93'
    'EKAN79'
    'CHTA58'
    'HRAN63'
    'HNTZ86'
    'PEAN76'
    %BP
    'EKIK86'
    'EFWE82'
    'ERNE60'
    'NNEN72'
    'USNE78'
    'KARD60'
    'ENKE59'
    'DERG58'
    'ERTH81'
    'RTAS65'
    'UBLA56'
    'DAEL78'
    'ERIA87'
    'ERTE60'
    'ELNA61'
    'ESEL82'
    'OSNI65'
    'KINA65'
    'ERIA81'
    'CHDA88'
    'EREL89'
    'RTIT60'
    'FFPH82'
    %HC
    'CKAS90'
    'DELS88'
    'DTLA68'
    'ELER94'
    'EREL83'
    'RZED56'
    'ERKA86'
    'CHKA87'
    'LEANN77'
    'MPKE94'
    'ERNA75'
    'EKEA83'
    'NNCH88'
    'CKNT90'
    'NSNA76'
    'NGRT86'
    'SPKA96'
    'ERAN91'
    'ERAN89'
    'ERNE61'
    'ERUS57'
    'UGEN85'
    'ERAS62'
    'NKNK72'
    'LTEL87'
    'ERAX91'
    'NIEG92'
    'FTIK91'
    'CHRD92'
    };
aSubject.ATWM1_PSYPHY_EXP8 = sort(aSubject.ATWM1_PSY_EXP8);
%}

aSubject.ATWM1_PSY_EXP8.Groups.CONT = {
    'CKAS90'
    'DELS88'
    'DTLA68'
    'ELER94'
    'EREL83'
    'RZED56'
    'ERKA86'
    'CHKA87'
    'LEANN77'
    'MPKE94'
    'ERNA75'
    'EKEA83'
    'NNCH88'
    'CKNT90'
    'NSNA76'
    'NGRT86'
    'SPKA96'
    'ERAN91'
    'ERAN89'
    'ERNE61'
    'ERUS57'
    'UGEN85'
    'ERAS62'
    'NKNK72'
    'LTEL87'
    'ERAX91'
    'NIEG92'
    'FTIK91'
    'CHRD92'
    };
aSubject.ATWM1_PSY_EXP8.Groups.CONT = sort(aSubject.ATWM1_PSY_EXP8.Groups.CONT);


aSubject.ATWM1_PSY_EXP8.Groups.SCHI = {
    'CHAN22'
    'ERRG90'
    'ERHY85'
    'ERIC89'
    'ERNA90'
    'LEIN75'
    'LIED76'
    'AXSA74'
    'NANG82'
    'CHAN64'
    'ERNE64'
    'NKNZ77'
    'FFWE66'
    'ILAS80'
    'TAHA90'
    'ELAS75'
    'ERRA71'
    'EVEL82'
    'TTKE87'
    'OBON81'
    'ELAN88'
    'ERUS72'
    'NION84'
    'CHNA87'
    'LKIS93'
    'EKAN79'
    'CHTA58'
    'HRAN63'
    'HNTZ86'
    'PEAN76'
    };
aSubject.ATWM1_PSY_EXP8.Groups.SCHI = sort(aSubject.ATWM1_PSY_EXP8.Groups.SCHI);


aSubject.ATWM1_PSY_EXP8.Groups.BIPO = {
    'EKIK86'
    'EFWE82'
    'ERNE60'
    'NNEN72'
    'USNE78'
    'KARD60'
    'ENKE59'
    'DERG58'
    'ERTH81'
    'RTAS65'
    'UBLA56'
    'DAEL78'
    'ERIA87'
    'ERTE60'
    'ELNA61'
    'ESEL82'
    'OSNI65'
    'KINA65'
    'ERIA81'
    'CHDA88'
    'EREL89'
    'RTIT60'
    'FFPH82'
    };
aSubject.ATWM1_PSY_EXP8.Groups.BIPO = sort(aSubject.ATWM1_PSY_EXP8.Groups.BIPO);


aSubject.ATWM1_PSY_EXP8.Groups.ADHD = {
    % No subjects recruited
    };
aSubject.ATWM1_PSY_EXP8.Groups.ADHD = sort(aSubject.ATWM1_PSY_EXP8.Groups.ADHD);


aSubject.ATWM1_PSY_EXP8.Groups.RELS = {
    % No subjects recruited
    };
aSubject.ATWM1_PSY_EXP8.Groups.RELS = sort(aSubject.ATWM1_PSY_EXP8.Groups.RELS);

end