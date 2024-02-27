function parametersParadigm = parametersParadigmATWM1_PSY_EXP8_Round2();

parametersParadigm.aSalienceConditions 	= {
    'Salient'
    'Nonsalient'
    };  

parametersParadigm.aCueConditions       = {
    'Cued'
    'Uncued'
    };    

parametersParadigm.aStrRetrieval        = {
    'CuedRetrieval'
    'UncuedRetriev'
    };

parametersParadigm.aConditions   	    = {
    'Salient_Cued'
    'Nonsalient_Cued'
    'Salient_Uncued'
    'Nonsalient_Uncued'
    };

parametersParadigm.strNoChange   	    = 'NoChange';
parametersParadigm.strChange            = 'DoChange';
parametersParadigm.aStrChange        	= {
    parametersParadigm.strNoChange
    parametersParadigm.strChange
    };

parametersParadigm.aConditionsRetrieval = {
    'Salient_Cued_CuedRetrieval'
    'Salient_Cued_UncuedRetriev'
    'Nonsalient_Cued_CuedRetrieval'
    'Nonsalient_Cued_UncuedRetriev'
    'Salient_Uncued_CuedRetrieval'
    'Salient_Uncued_UncuedRetriev'
    'Nonsalient_Uncued_CuedRetrieval'
    'Nonsalient_Uncued_UncuedRetriev'
    };

cccs = 0;
for cc = 1:length(parametersParadigm.aConditions)
    for cci = 1:length(parametersParadigm.aStrChange)
        cccs = cccs +1;
        parametersParadigm.aConditionsChange{cccs}            = strcat(parametersParadigm.aConditions{cc}, '_', parametersParadigm.aStrChange{cci});
    end    
end

ccrcs = 0;
for ccrs = 1:length(parametersParadigm.aConditionsRetrieval)
    for cci = 1:length(parametersParadigm.aStrChange)
        ccrcs = ccrcs + 1;
        parametersParadigm.aConditionsRetrievalChange{ccrcs}  = strcat(parametersParadigm.aConditionsRetrieval{ccrs}, '_', parametersParadigm.aStrChange{cci});
    end
end

parametersParadigm.nConditions                  = length(parametersParadigm.aConditions);
parametersParadigm.nConditionsChange            = length(parametersParadigm.aConditionsChange);
parametersParadigm.nConditionsRetrieval       	= length(parametersParadigm.aConditionsRetrieval);
parametersParadigm.nConditionsRetrievalChange   = length(parametersParadigm.aConditionsRetrievalChange);
parametersParadigm.nRunsPerCondition      	    = [2, 2, 2, 2];
parametersParadigm.nRunsTotal       	        = sum(parametersParadigm.nRunsPerCondition);
parametersParadigm.wmLoad           	        = [2, 2, 2, 2];
parametersParadigm.frequencyRetrieval   	    = [0.8 0.2];
parametersParadigm.nPractiseTrials              = [0, 0,];
parametersParadigm.iPractiseRuns                = [1, 2, 5];
parametersParadigm.iFullRuns                    = [6, 7];

parametersParadigm.nTrialsPerRun                = 25;
parametersParadigm.nTrialsPerCondition          = parametersParadigm.nRunsPerCondition * parametersParadigm.nTrialsPerRun;
parametersParadigm.nTrialsTotal                 = sum(parametersParadigm.nTrialsPerCondition);
                                            
parametersParadigm.noChangeResponse             = 10;
parametersParadigm.changeResponse               = 20;
parametersParadigm.missingResponse              = 30;
parametersParadigm.vValidResponses              = [
    parametersParadigm.noChangeResponse
    parametersParadigm.changeResponse
    ];
                                            
parametersParadigm.iCorrectResponse             = 1;
parametersParadigm.iIncorrectResponse           = 0;
parametersParadigm.iMissingResponse             = -1;

parametersParadigm.iFirstTrial                  = '1_4_Objects';
parametersParadigm.iTrial                       = '4_Objects';
parametersParadigm.iDelay                       = 'Delay';
parametersParadigm.iRetrieval                   = 'Retriev';
parametersParadigm.iResponse                    = 'Response';



end

