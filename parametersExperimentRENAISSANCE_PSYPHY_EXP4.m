function parametersExperiment = parametersExperimentATWM1_PSYPHY_EXP4()
    
    parametersExperiment.aConditionFiles        = {
        'Salient_Cued'
        'Salient_Uncued'
        'Nonsalient_Cued'
        'Nonsalient_Uncued'
        };
    parametersExperiment.nRuns                  = [2, 2, 2, 2];
    parametersExperiment.nConditionFiles        = length(parametersExperiment.aConditionFiles);
    parametersExperiment.nPractiseTrials        = [1, 1,];
    parametersExperiment.wmLoad                 = [3, 3, 3, 3];
    
    parametersExperiment.aLabelConditions       = {
        'Salient'
        'Nonsalient'
        };    

    parametersExperiment.aConditions            = {
        'Salient_Cued'
        'Salient_Uncued'
        'Nonsalient_Cued'
        'Nonsalient_Uncued'
        };
    
    parametersExperiment.nConditions            = length(parametersExperiment.aConditions);
    parametersExperiment.wmLoadCondition        = [3, 3, 3, 3];
    
    %parametersExperiment.iNoChange              = 'NoChange';
    %parametersExperiment.iChange                = 'Change';
    parametersExperiment.aChangeIndex           = {
        parametersExperiment.iNoChange
        parametersExperiment.iChange
        };
    parametersExperiment.aConditionsChangeIndex = {
        'Salient_Cued_Change'
        'Salient_Cued_NoChange'
        'Salient_Uncued_Change'
        'Salient_Uncued_NoChange'
        'Nonsalient_Uncued_Change'
        'Nonsalient_Uncued_NoChange'
        'Nonsalient_Cued_Change'
        'Nonsalient_Cued_NoChange'
        };
    
    ccci = 0;
    for cc = 1:length(parametersExperiment.aConditions)
        for cci = 1:length(parametersExperiment.aChangeIndex)
            ccci = ccci +1;
            parametersExperiment.aConditionsChangeIndex{ccci} = strcat(parametersExperiment.aConditions{cc}, '_', parametersExperiment.aChangeIndex{cci});
        end    
    end
    parametersExperiment.aConditionsChangeIndex = sort(parametersExperiment.aConditionsChangeIndex);
    
    parametersExperiment.nConditionsChangeIndex = length(parametersExperiment.aConditionsChangeIndex);
    
    parametersExperiment.iFirstTrial = '1_6_Objects';
    parametersExperiment.iTrial = '6_Objects';
    parametersExperiment.iDelay = 'delay';
    parametersExperiment.iRetrieval = 'Retrieval';
    parametersExperiment.iResponse = 'Response';



end