function parametersSubjectCode = parametersSubjectCodeRENAISSANCE()

global iStudy

parametersSubjectCode.strSubjectCode                = 'Subject_Code';
parametersSubjectCode.strSubjectCodeText            = strrep(parametersSubjectCode.strSubjectCode, '_', ' ');

%%% Parameters for subject code file name
parametersSubjectCode.extTxt                        = '.txt';
parametersSubjectCode.strExampleSubjectCodeFileName = sprintf('%s_%s_#001%s', iStudy, parametersSubjectCode.strSubjectCode, parametersSubjectCode.extTxt);
parametersSubjectCode.lengthStudyCodeFileName       = length(parametersSubjectCode.strExampleSubjectCodeFileName);

%%% Parameters for character code
parametersSubjectCode.nRandomCharacters             = 5;        % YYY999XX  ADZ716MY
parametersSubjectCode.nInitialCharacters            = 3;
parametersSubjectCode.nEndingCharacters             = parametersSubjectCode.nRandomCharacters - parametersSubjectCode.nInitialCharacters;
parametersSubjectCode.nGeneratedCodes               = 1000;
parametersSubjectCode.excludedCharacters            = 'BIOS';

parametersSubjectCode.nMiddleIntegers               = 3;
parametersSubjectCode.excludedIntegers              = double(parametersSubjectCode.excludedCharacters);
parametersSubjectCode.allIntegers                   = 65:90;
parametersSubjectCode.validIntegers                 = parametersSubjectCode.allIntegers(~ismember(parametersSubjectCode.allIntegers, parametersSubjectCode.excludedIntegers));
parametersSubjectCode.validCharacters               = char(parametersSubjectCode.validIntegers);


parametersSubjectCode.indexEndingCharacters         = parametersSubjectCode.nInitialCharacters + parametersSubjectCode.nMiddleIntegers + 1;
parametersSubjectCode.lengthSubjectCode             = parametersSubjectCode.nRandomCharacters + parametersSubjectCode.nMiddleIntegers;

%%% Parameters for integer code9
parametersSubjectCode.vValidCodeIntegers            = 100:999;

parametersSubjectCode.maxNrOfRandomDraws            = 1000;


end