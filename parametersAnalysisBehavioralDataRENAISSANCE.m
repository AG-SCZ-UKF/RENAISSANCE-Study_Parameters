function parametersAnalysisBehavioralData = parametersAnalysisBehavioralDataATWM1()


parametersAnalysisBehavioralData.strTrialData                           = 'Trial_Data';
parametersAnalysisBehavioralData.strPerformanceData                     = 'Performance_Data';

parametersAnalysisBehavioralData.strShortBehavioralData                 = 'BHD';
parametersAnalysisBehavioralData.strMissingResponse                     = 'MR';
parametersAnalysisBehavioralData.strTrialsWithMissingResponseExcluded 	= 'NO_MR';
parametersAnalysisBehavioralData.strMissingResponseExclusionStatus      = '';


parametersAnalysisBehavioralData.strCondition                   = 'condition';

parametersAnalysisBehavioralData.strAccuracy                    = 'Accuracy';
parametersAnalysisBehavioralData.strReactionTime                = 'ReactionTime';
parametersAnalysisBehavioralData.aStrBasicBehavioralParameter	= {
    parametersAnalysisBehavioralData.strAccuracy
    parametersAnalysisBehavioralData.strReactionTime
    };
parametersAnalysisBehavioralData.nBasicBehavioralParameters     = length(parametersAnalysisBehavioralData.aStrBasicBehavioralParameter);

parametersAnalysisBehavioralData.strGlobalAccuracy              = 'Global_Accuracy';
parametersAnalysisBehavioralData.strGlobalReactionTime          = 'Global_ReactionTime';
parametersAnalysisBehavioralData.aStrOverallBehavioralParameter = {
    parametersAnalysisBehavioralData.strGlobalAccuracy
    parametersAnalysisBehavioralData.strGlobalReactionTime
    };
parametersAnalysisBehavioralData.nGlobalBehavioralParameters    = length(parametersAnalysisBehavioralData.aStrOverallBehavioralParameter);


parametersAnalysisBehavioralData.strGlobalAccuracyCuedRetrieval             = 'Global_Accuracy_CuedRetrieval';
parametersAnalysisBehavioralData.strGlobalAccuracyUncuedRetrieval           = 'Global_Accuracy_UncuedRetrieval';
parametersAnalysisBehavioralData.strGlobalReactionTimeCuedRetrieval         = 'Global_ReactionTime_CuedRetrieval';
parametersAnalysisBehavioralData.strGlobalReactionTimeUncuedRetrieval       = 'Global_ReactionTime_UncuedRetrieval';
parametersAnalysisBehavioralData.aStrOverallBehavioralParameterRetrieval    = {
    parametersAnalysisBehavioralData.strGlobalAccuracyCuedRetrieval
    parametersAnalysisBehavioralData.strGlobalAccuracyUncuedRetrieval
    parametersAnalysisBehavioralData.strGlobalReactionTimeCuedRetrieval
    parametersAnalysisBehavioralData.strGlobalReactionTimeUncuedRetrieval
    };
parametersAnalysisBehavioralData.nGlobalBehavioralParametersRetrieval       = length(parametersAnalysisBehavioralData.aStrOverallBehavioralParameterRetrieval);

parametersAnalysisBehavioralData.strCowansK                     = 'CowansK';


parametersAnalysisBehavioralData.aStrBehavioralParameter            = [
    parametersAnalysisBehavioralData.aStrBasicBehavioralParameter
    parametersAnalysisBehavioralData.strCowansK
    parametersAnalysisBehavioralData.strMissingResponse
    ];
parametersAnalysisBehavioralData.nBehavioralParameters          = length(parametersAnalysisBehavioralData.aStrBehavioralParameter);

parametersAnalysisBehavioralData.strMeanValue                   = 'mean';
parametersAnalysisBehavioralData.strStandardError               = 'standardError';

parametersAnalysisBehavioralData.bPutGlobalParametersAtFront    = true; 
parametersAnalysisBehavioralData.bCreateExcelFileForResults     = false;

%{
parametersAnalysisBehavioralData.aStrVariablesForAnalysis       = {
                                                                    'globalAccuracy'
                                                                    'globalReactionTime'
                                                                    'conditionAccuracy'
                                                                    'conditionChangeAccuracy'
                                                                    'conditionRetrievalAccuracy'
                                                                    'conditionRetrievalChangeAccuracy'
                                                                    'conditionReactionTime'
                                                                    'conditionChangeReactionTime'
                                                                    'conditionRetrievalReactionTime'
                                                                    'conditionRetrievalChangeReactionTime'
                                                                    'conditionCowansK'
                                                                    'conditionRetrievalCowansK'
                                                                    };
%}


end