function parametersParadigm = parametersParadigmATWM1_PSYPHY_EXP4();

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
    'UncuedRetrieval'
    };

parametersParadigm.aConditions   	    = {
    'Salient_Cued'
    'Nonsalient_Cued'
    'Salient_Uncued'
    'Nonsalient_Uncued'
    };

parametersParadigm.strNoChange   	    = 'NoChange';
parametersParadigm.strChange            = 'Change';
parametersParadigm.aStrChange        	= {
    parametersParadigm.strNoChange
    parametersParadigm.strChange
    };

parametersParadigm.aConditionsRetrieval = {
    'Salient_Cued_CuedRetrieval'
    'Salient_Cued_UncuedRetrieval'
    'Nonsalient_Cued_CuedRetrieval'
    'Nonsalient_Cued_UncuedRetrieval'
    'Salient_Uncued_CuedRetrieval'
    'Salient_Uncued_UncuedRetrieval'
    'Nonsalient_Uncued_CuedRetrieval'
    'Nonsalient_Uncued_UncuedRetrieval'
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
parametersParadigm.wmLoad           	        = [3, 3, 3, 3];
parametersParadigm.frequencyRetrieval   	    = [0.8 0.2];
parametersParadigm.nPractiseTrials              = [1, 1,];
parametersParadigm.nTrialsPerRun                = 60;
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

parametersParadigm.iFirstTrial                  = '1_6_Objects';
parametersParadigm.iTrial                       = '6_Objects';
parametersParadigm.iDelay                       = 'delay';
parametersParadigm.iRetrieval                   = 'Retrieval';
parametersParadigm.iResponse                    = 'Response';



end

