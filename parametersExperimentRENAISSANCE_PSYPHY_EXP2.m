function parametersExperiment = parametersExperimentATWM1_PSYPHY_EXP2()
    
    %BAUL86-ATWM1_PSYPHY_EXP2_condB_run1.log
    %BAUL86-ATWM1_PSYPHY_EXP2_condB_run2.log
    %BAUL86-ATWM1_PSYPHY_EXP2_condC_run1.log
    %BAUL86-ATWM1_PSYPHY_EXP2_condC_run2.log

    parametersExperiment.aConditionFiles        = {
        'B'
        'C'
        };
    parametersExperiment.nRuns                  = [2, 2];
    parametersExperiment.nConditionFiles        = length(parametersExperiment.aConditionFiles);
    parametersExperiment.nPractiseTrials        = [1, 1];
    parametersExperiment.wmLoad                 = [3, 3];
    
    parametersExperiment.aLabelConditions       = {
        'Flicker-bias'
        'Nonflicker-bias'
        };    
    
    parametersExperiment.aConditions            = {
        'FlickerBias_Cued'
        'FlickerBias_Uncued'
        'NonflickerBias_Uncued'
        'NonflickerBias_Cued'
        };
    parametersExperiment.nConditions            = length(parametersExperiment.aConditions);
    parametersExperiment.wmLoadCondition        = [3, 3, 3, 3];
    
    parametersExperiment.aConditionsChangeIndex = {
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