function parametersParadigm_WM_MRI = parametersParadigm_WM_MRI_ATWM1()

%%% Load the global parameters used for both the MEG and fMRI version of
%%% the paradigm
parametersParadigm_WM_MRI = parametersParadigm_WM_IMAGING_ATWM1;

parametersParadigm_WM_MRI.aSalienceConditions 	= {
    'Salient'
    'Nonsalient'
    };  

parametersParadigm_WM_MRI.aCueConditions       = {
    'Cued'
    'Uncued'
    };    

parametersParadigm_WM_MRI.aStrRetrieval        = {
    'CuedRetrieval'
    'UncuedRetriev'
    };

parametersParadigm_WM_MRI.aConditions   	    = {
    'Salient_Cued'
    'Nonsalient_Cued'
    'Salient_Uncued'
    'Nonsalient_Uncued'
    };

parametersParadigm_WM_MRI.strNoChange   	    = 'NoChange';
parametersParadigm_WM_MRI.strChange             = 'DoChange';
parametersParadigm_WM_MRI.aStrChange        	= {
    parametersParadigm_WM_MRI.strNoChange
    parametersParadigm_WM_MRI.strChange
    };

parametersParadigm_WM_MRI.aConditionsRetrieval = {
    'Salient_Cued_CuedRetrieval'
    'Salient_Cued_UncuedRetriev'
    'Nonsalient_Cued_CuedRetrieval'
    'Nonsalient_Cued_UncuedRetriev'
    'Salient_Uncued_CuedRetrieval'
    'Salient_Uncued_UncuedRetriev'
    'Nonsalient_Uncued_CuedRetrieval'
    'Nonsalient_Uncued_UncuedRetriev'
    };

parametersParadigm_WM_MRI.strAccuracy           = 'Accuracy';
parametersParadigm_WM_MRI.strReactionTime       = 'ReactionTime';

cccs = 0;
for cc = 1:numel(parametersParadigm_WM_MRI.aConditions)
    for cci = 1:numel(parametersParadigm_WM_MRI.aStrChange)
        cccs = cccs +1;
        parametersParadigm_WM_MRI.aConditionsChange{cccs}            = strcat(parametersParadigm_WM_MRI.aConditions{cc}, '_', parametersParadigm_WM_MRI.aStrChange{cci});
    end    
end

ccrcs = 0;
for ccrs = 1:numel(parametersParadigm_WM_MRI.aConditionsRetrieval)
    for cci = 1:numel(parametersParadigm_WM_MRI.aStrChange)
        ccrcs = ccrcs + 1;
        parametersParadigm_WM_MRI.aConditionsRetrievalChange{ccrcs}  = strcat(parametersParadigm_WM_MRI.aConditionsRetrieval{ccrs}, '_', parametersParadigm_WM_MRI.aStrChange{cci});
    end
end

parametersParadigm_WM_MRI.nConditions                   = numel(parametersParadigm_WM_MRI.aConditions);
parametersParadigm_WM_MRI.nConditionsChange             = numel(parametersParadigm_WM_MRI.aConditionsChange);
parametersParadigm_WM_MRI.nConditionsRetrieval       	= numel(parametersParadigm_WM_MRI.aConditionsRetrieval);
parametersParadigm_WM_MRI.nConditionsRetrievalChange    = numel(parametersParadigm_WM_MRI.aConditionsRetrievalChange);
parametersParadigm_WM_MRI.nRunsPerCondition      	    = [1, 1, 1, 1];
parametersParadigm_WM_MRI.nTotalRuns                    = sum(parametersParadigm_WM_MRI.nRunsPerCondition);
parametersParadigm_WM_MRI.wmLoad                        = [2, 2, 2, 2];
parametersParadigm_WM_MRI.frequencyRetrieval            = [0.8 0.2];
%parametersParadigm_WM_MRI.nPractiseTrials              = [0, 0,];
%parametersParadigm_WM_MRI.iPractiseRuns                = [1, 2, 5];
%parametersParadigm_WM_MRI.iFullRuns                    = [3, 4, 6, 7];
parametersParadigm_WM_MRI.nTrialsPerRun                 = 15;
parametersParadigm_WM_MRI.nTrialsPerCondition           = parametersParadigm_WM_MRI.nRunsPerCondition * parametersParadigm_WM_MRI.nTrialsPerRun;
parametersParadigm_WM_MRI.nTrialsTotal                  = sum(parametersParadigm_WM_MRI.nTrialsPerCondition);
                                            
parametersParadigm_WM_MRI.vNoChangeResponse             = [10, 20];     % [LR, RL] configuration
parametersParadigm_WM_MRI.vChangeResponse               = [20, 10];     % [LR, RL] configuration
parametersParadigm_WM_MRI.indResponseConfiguration      = 1;      
parametersParadigm_WM_MRI.noChangeResponse              = parametersParadigm_WM_MRI.vNoChangeResponse(parametersParadigm_WM_MRI.indResponseConfiguration);
parametersParadigm_WM_MRI.changeResponse                = parametersParadigm_WM_MRI.vNoChangeResponse(parametersParadigm_WM_MRI.indResponseConfiguration);

parametersParadigm_WM_MRI.missingResponse               = 30;
parametersParadigm_WM_MRI.vValidResponses               = [
    parametersParadigm_WM_MRI.noChangeResponse
    parametersParadigm_WM_MRI.changeResponse
    ];
                                            
parametersParadigm_WM_MRI.iCorrectResponse              = 1;
parametersParadigm_WM_MRI.iIncorrectResponse            = 0;
parametersParadigm_WM_MRI.iMissingResponse              = -1;

parametersParadigm_WM_MRI.strCue                        = 'Cue';
parametersParadigm_WM_MRI.strSalience                   = 'Salience';

parametersParadigm_WM_MRI.strPreparation                = 'Preparation';
parametersParadigm_WM_MRI.strEncoding                   = 'Encoding';
parametersParadigm_WM_MRI.strDelay                      = 'Delay';
parametersParadigm_WM_MRI.strRetrieval                  = 'Retrieval';
parametersParadigm_WM_MRI.strResponse                   = 'Response';
parametersParadigm_WM_MRI.strInterTrialInterval         = 'ITI';
                                                        
parametersParadigm_WM_MRI.strTrial                      = parametersParadigm_WM_MRI.strEncoding;
parametersParadigm_WM_MRI.strFirstTrial                 = sprintf('1_1_%s', parametersParadigm_WM_MRI.strTrial);


parametersParadigm_WM_MRI.aStrTrialPhases               = {
                                                            parametersParadigm_WM_MRI.strCue
                                                            parametersParadigm_WM_MRI.strPreparation
                                                            parametersParadigm_WM_MRI.strEncoding
                                                            parametersParadigm_WM_MRI.strDelay
                                                            parametersParadigm_WM_MRI.strRetrieval
                                                            parametersParadigm_WM_MRI.strInterTrialInterval
                                                            };
parametersParadigm_WM_MRI.nrOfTrialPhases               = numel(parametersParadigm_WM_MRI.aStrTrialPhases);
parametersParadigm_WM_MRI.indTriggeredTrialStart        = find(contains(parametersParadigm_WM_MRI.aStrTrialPhases, parametersParadigm_WM_MRI.strTrial));

parametersParadigm_WM_MRI.strOrientation                = 'orientation';
parametersParadigm_WM_MRI.strPosition                   = 'position';


parametersParadigm_WM_MRI.strIndexTrialInfo             = '"';
parametersParadigm_WM_MRI.strSeparator                  = '_';
parametersParadigm_WM_MRI.strIndexEndOfTrialDefinitions = '};';
parametersParadigm_WM_MRI.strDuration                   = 'duration';

parametersParadigm_WM_MRI.strSalienceCue                = sprintf('%s%s', parametersParadigm_WM_MRI.strSalience, parametersParadigm_WM_MRI.strCue);
parametersParadigm_WM_MRI.aStrAnalysesTypes             = {
                                                            parametersParadigm_WM_MRI.strSalienceCue
                                                            };
parametersParadigm_WM_MRI.nAnalysesTypes                = numel(parametersParadigm_WM_MRI.aStrAnalysesTypes);

parametersParadigm_WM_MRI.aNrOfConditions               = {
                                                            parametersParadigm_WM_MRI.nConditions
                                                            };

parametersParadigm_WM_MRI.strBaselinePre                = 'BaselinePre';
parametersParadigm_WM_MRI.strBaselinePost               = 'BaselinePost';
parametersParadigm_WM_MRI.aStrBaselines                 = {
                                                            parametersParadigm_WM_MRI.strBaselinePre
                                                            parametersParadigm_WM_MRI.strBaselinePost
                                                            };
parametersParadigm_WM_MRI.nrOfBaselines                 = numel(parametersParadigm_WM_MRI.aStrBaselines);


end

