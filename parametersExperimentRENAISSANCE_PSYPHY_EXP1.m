function parametersExperiment = parametersExperimentATWM1_PSYPHY_EXP1()

    parametersExperiment.aConditionFiles        = {
        'A'
        'B'
        'C'
        };
    parametersExperiment.nRuns                  = [1, 2, 2];
    parametersExperiment.nConditionFiles        = length(parametersExperiment.aConditionFiles);
    parametersExperiment.nPractiseTrials        = [1, 1, 1,];
    parametersExperiment.wmLoad                 = [6, 3, 3];
    
    parametersExperiment.aLabelConditions       = {
        'Unbiased'
        'Flicker-bias'
        'Nonflicker-bias'
        };    
    
    parametersExperiment.aConditions            = {
        'NoBias_Cued'
        'NoBias_Uncued'
        'FlickerBias_Cued'
        'FlickerBias_Uncued'
        'NonflickerBias_Uncued'
        'NonflickerBias_Cued'
        };
    parametersExperiment.nConditions            = length(parametersExperiment.aConditions);
    parametersExperiment.wmLoadCondition        = [6, 6, 3, 3, 3, 3];
    
    parametersExperiment.aConditionsChangeIndex = {
        'NoBias_Cued_Change'
        'NoBias_Cued_NoChange'
        'NoBias_Uncued_Change'
        'NoBias_Uncued_NoChange'
        'FlickerBias_Cued_Change'
        'FlickerBias_Cued_NoChange'
        'FlickerBias_Uncued_Change'
        'FlickerBias_Uncued_NoChange'
        'NonflickerBias_Uncued_Change'
        'NonflickerBias_Uncued_NoChange'
        'NonflickerBias_Cued_Change'
        'NonflickerBias_Cued_NoChange'
        };
    parametersExperiment.nConditionsChangeIndex = length(parametersExperiment.aConditionsChangeIndex);

end