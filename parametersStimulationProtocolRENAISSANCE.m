function parametersStimulationProtocol = parametersStimulationProtocolATWM1()
%%% This file contains the specifications for the BrainVoyager stimulation
%%% protocol required for generating a design matrix

parametersStimulationProtocol.iResolution               = 1;    %%% 1 = volumes; 2 = milliseconds
parametersStimulationProtocol.strResolutionVolumes      = 'Volumes';
parametersStimulationProtocol.strResolutionMilliseconds = 'msec';
parametersStimulationProtocol.aStrResolution            = {
                                                            parametersStimulationProtocol.strResolutionVolumes
                                                            parametersStimulationProtocol.strResolutionMilliseconds
                                                            };
parametersStimulationProtocol.strResolution             = parametersStimulationProtocol.aStrResolution{parametersStimulationProtocol.iResolution};


%'msec'
%parametersStimulationProtocol.indexWmLoad       = 'Load';
%%{
parametersStimulationProtocol.indexMaskArray    = {
    'CoveringMask'
    'NonCoveringMask'
    };
parametersStimulationProtocol.taskPhaseArray    = {
    'Encoding'
    'Delay1'
    'Delay2'
    'Delay3'
    'Retrieval'
    };

%%% Define protocol types
parametersStimulationProtocol.protocolTypeArray = {
    'StandardProtocol'
    'CorrectIncorrectProtocol'
    'ConditionMergedStandardProtocol'
    'ConditionMergedCorrectIncorrectProtocol'
    };
parametersStimulationProtocol.nProtocolTypes = length(parametersStimulationProtocol.protocolTypeArray);

%%% Determine which protocols will be created
parametersStimulationProtocol.bCreateStandardProtocol                         = true;
parametersStimulationProtocol.bCreateCorrectIncorrectProtocol                 = true;
parametersStimulationProtocol.bCreateConditionMergedStandardProtocol          = true;
parametersStimulationProtocol.bCreateConditionMergedCorrectIncorrectProtocol  = true;

parametersStimulationProtocol.vbCreateProtocol = [
    parametersStimulationProtocol.bCreateStandardProtocol
    parametersStimulationProtocol.bCreateCorrectIncorrectProtocol
    parametersStimulationProtocol.bCreateConditionMergedStandardProtocol
    parametersStimulationProtocol.bCreateConditionMergedCorrectIncorrectProtocol
    ];

if length(parametersStimulationProtocol.nProtocolTypes) ~= parametersStimulationProtocol.nProtocolTypes
    strMessage = sprintf('\nError in stimulation protocol parameters! Number of protocol types and boolean variables not matching!\n');
    disp(strMessage);
end

%%% Define different design matrices
designMatrixArray = {
    %% Column 1: Regressor Length (volumes)     Column 2: Gap Length (volumes)
    [
    2   0
    1   0
    1   0
    1   0
    2   0
    ]
    
    [
    2   0
    1   0
    1   0
    2   0
    ]
    
    [
    1   1
    1   0
    1   0
    1   0
    2   0
    ]
    
    };

%%% The designMatrix
for d = 1:length(designMatrixArray)
    designMatrixLabel{d} = [];
    nRegressors(d) = length(designMatrixArray{d} / 2);
    parametersStimulationProtocol.nTaskPhases{d} = nRegressors(d);
    for r = 1:nRegressors(d)
        regressorLength = designMatrixArray{d}(r, 1);
        gapLength = designMatrixArray{d}(r, 2);
        gapIndex = [];
        for g = 1:gapLength
            gapIndex = [gapIndex, '-'];
        end
        if r == nRegressors(d) - 1
            gapIndex = [gapIndex, '~'];
        end
        regressorIndex{r} = [num2str(regressorLength), gapIndex];
        designMatrixLabel{d} = [designMatrixLabel{d}, regressorIndex{r}];
    end
    taskPhaseLabel{d} = parametersStimulationProtocol.taskPhaseArray;
    if nRegressors(d) == length(parametersStimulationProtocol.taskPhaseArray) - 1
        taskPhaseLabel{d}{length(parametersStimulationProtocol.taskPhaseArray) - 1} = parametersStimulationProtocol.taskPhaseArray{length(parametersStimulationProtocol.taskPhaseArray)};
        taskPhaseLabel{d} = taskPhaseLabel{d}(1:nRegressors(d));
    end
end

parametersStimulationProtocol.designMatrixArray         = designMatrixArray;
parametersStimulationProtocol.designMatrixLabelArray    = designMatrixLabel;
parametersStimulationProtocol.taskPhaseLabelArray       = taskPhaseLabel;
parametersStimulationProtocol.nRegressors               = nRegressors;
%}

end