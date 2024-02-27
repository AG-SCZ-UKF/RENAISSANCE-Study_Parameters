function parametersParadigm_LOC_MRI = parametersParadigm_LOC_MRI_ATWM1()

parametersParadigm_LOC_MRI.strTrial                         = '4_Objects';
parametersParadigm_LOC_MRI.strFirstTrial                    = sprintf('01_%s', parametersParadigm_LOC_MRI.strTrial);
parametersParadigm_LOC_MRI.strResponse                      = 'Response';
parametersParadigm_LOC_MRI.strInterTrialInterval            = 'ITI';
parametersParadigm_LOC_MRI.strSeparator                     = '_';
parametersParadigm_LOC_MRI.strStimulus                      = 'Stimulus';
parametersParadigm_LOC_MRI.strPosition                      = 'Pos';
parametersParadigm_LOC_MRI.strPositionLong                  = 'Position';
parametersParadigm_LOC_MRI.strTarget                        = 'Target';
parametersParadigm_LOC_MRI.strTargetComb                    = 'TargetComb';
parametersParadigm_LOC_MRI.strTargetTrial                   = 'TargetTrial';
parametersParadigm_LOC_MRI.strStandardTrial                 = 'DefaultTrial';
parametersParadigm_LOC_MRI.strAccuracy                      = 'Accuracy';
parametersParadigm_LOC_MRI.strReactionTime                  = 'ReactionTime';

parametersParadigm_LOC_MRI.strLeft                          = 'left';
parametersParadigm_LOC_MRI.strRight                         = 'right';
parametersParadigm_LOC_MRI.strUpper                         = 'upper';
parametersParadigm_LOC_MRI.strLower                         = 'lower';

parametersParadigm_LOC_MRI.aStrTrialTypes                   = {
                                                                parametersParadigm_LOC_MRI.strStandardTrial
                                                                parametersParadigm_LOC_MRI.strTargetTrial
                                                                };
                                                            
parametersParadigm_LOC_MRI.indStandardTrial                 = find(contains(parametersParadigm_LOC_MRI.aStrTrialTypes, parametersParadigm_LOC_MRI.strStandardTrial));
parametersParadigm_LOC_MRI.indTargetTrial                   = find(contains(parametersParadigm_LOC_MRI.aStrTrialTypes, parametersParadigm_LOC_MRI.strTargetTrial));

parametersParadigm_LOC_MRI.nTrialTypes                      = length(parametersParadigm_LOC_MRI.aStrTrialTypes);
parametersParadigm_LOC_MRI.nTrialsPerTrialType              = [
                                                                108
                                                                36
                                                                ];
parametersParadigm_LOC_MRI.nPositions                       = 4;
parametersParadigm_LOC_MRI.nConditionsTarget                = parametersParadigm_LOC_MRI.nTrialTypes * parametersParadigm_LOC_MRI.nPositions;
parametersParadigm_LOC_MRI.nConditionsPosition              = parametersParadigm_LOC_MRI.nPositions;

parametersParadigm_LOC_MRI.nConditions                      = parametersParadigm_LOC_MRI.nTrialTypes * parametersParadigm_LOC_MRI.nPositions;

parametersParadigm_LOC_MRI.nTotalRuns                       = 1;
parametersParadigm_LOC_MRI.nTrialsPerRun                    = 144;
parametersParadigm_LOC_MRI.nItisPerRun                      = 11;

parametersParadigm_LOC_MRI.aStrTrialPhases                  = {
                                                                parametersParadigm_LOC_MRI.strStimulus
                                                                };


%%% Resonse & performance paramters
parametersParadigm_LOC_MRI.targetResponse                   = 10;
parametersParadigm_LOC_MRI.standardResponse                 = 0;
parametersParadigm_LOC_MRI.missingResponse                  = 30;
parametersParadigm_LOC_MRI.vValidResponses                  = [
                                                                parametersParadigm_LOC_MRI.targetResponse
                                                                parametersParadigm_LOC_MRI.standardResponse
                                                                ];
                                            
parametersParadigm_LOC_MRI.iCorrectResponse                 = 1;
parametersParadigm_LOC_MRI.iIncorrectResponse               = 0;
parametersParadigm_LOC_MRI.iMissingResponse                 = -1;

%%% Baseline parameters
parametersParadigm_LOC_MRI.strBaselinePre                   = 'BaselinePre';
parametersParadigm_LOC_MRI.strBaselinePost                  = 'BaselinePost';
parametersParadigm_LOC_MRI.aStrBaselines                    = {
                                                                parametersParadigm_LOC_MRI.strBaselinePre
                                                                parametersParadigm_LOC_MRI.strBaselinePost
                                                                };
parametersParadigm_LOC_MRI.nrOfBaselines                    = numel(parametersParadigm_LOC_MRI.aStrBaselines);


%%% Durations
parametersParadigm_LOC_MRI.duration.stimulus                = 2000;     % [msec]
parametersParadigm_LOC_MRI.duration.singleCheckerboard      = 133;      % [msec]
parametersParadigm_LOC_MRI.duration.iti                     = 2000;     % [msec]
parametersParadigm_LOC_MRI.duration.baselinePre             = 10000;    % [msec]
parametersParadigm_LOC_MRI.duration.baselinePost            = 20000;    % [msec]

parametersParadigm_LOC_MRI.frequencyStimulusChange          = parametersParadigm_LOC_MRI.duration.stimulus / parametersParadigm_LOC_MRI.duration.singleCheckerboard;    % [Hz]

%%% Horizontal and vertical directions
parametersParadigm_LOC_MRI.aStrHoriDir                      = {
                                                                parametersParadigm_LOC_MRI.strRight
                                                                parametersParadigm_LOC_MRI.strLeft
                                                                };
parametersParadigm_LOC_MRI.aStrVertDir                      = {
                                                                parametersParadigm_LOC_MRI.strUpper
                                                                parametersParadigm_LOC_MRI.strLower
                                                                };

%%% Define position names in presentation logfiles
%Pos1 - right upper  45.96  45.96 
%Pos2 - left upper  -45.96  45.96 
%Pos3 - left lower  -45.96 -45.96 
%Pos4 - right lower  45.96 -45.96


for cpos = 1:parametersParadigm_LOC_MRI.nPositions
    parametersParadigm_LOC_MRI.aStrPositions{cpos} = sprintf('%s%i', parametersParadigm_LOC_MRI.strPosition, cpos);
end



%%% Define position labels in design matrix etc. 
cpos = 0;
for chd = 1:numel(parametersParadigm_LOC_MRI.aStrHoriDir)
    for cvd = 1:numel(parametersParadigm_LOC_MRI.aStrVertDir)
        cpos = cpos + 1;
        parametersParadigm_LOC_MRI.aStrLabelPos{cpos}       = sprintf('%s%s%s', parametersParadigm_LOC_MRI.aStrVertDir{cvd}, upper(parametersParadigm_LOC_MRI.aStrHoriDir{chd}(1)), lower(parametersParadigm_LOC_MRI.aStrHoriDir{chd}(2 : end)));
        parametersParadigm_LOC_MRI.aStrLabelPosShort{cpos}   = sprintf('%s%s', upper(parametersParadigm_LOC_MRI.aStrVertDir{cvd}(1)), upper(parametersParadigm_LOC_MRI.aStrHoriDir{chd}(1)));
    end
end

%%% Sort position labels counterclockwise starting with upperRight
% From      aStrLabelPos: {'upperRight'  'lowerRight'  'upperLeft'  'lowerLeft'}
% To        aStrLabelPos: {'upperRight'  'upperLeft'  'lowerLeft'  'lowerRight'}
parametersParadigm_LOC_MRI.vSortLabelPos        = [1, 3, 4, 2];
parametersParadigm_LOC_MRI.aStrLabelPos         = parametersParadigm_LOC_MRI.aStrLabelPos(parametersParadigm_LOC_MRI.vSortLabelPos);
parametersParadigm_LOC_MRI.aStrLabelPosShort    = parametersParadigm_LOC_MRI.aStrLabelPosShort(parametersParadigm_LOC_MRI.vSortLabelPos);


cpos = 0;
for cpos = 1:4%cpos + 1;
        %parametersParadigm_LOC_MRI.aStrLabelPos{cpos}       = sprintf('%s%s%s', parametersParadigm_LOC_MRI.aStrVertDir{cvd}, upper(parametersParadigm_LOC_MRI.aStrHoriDir{chd}(1)), lower(parametersParadigm_LOC_MRI.aStrHoriDir{chd}(2 : end)));
        parametersParadigm_LOC_MRI.aStrLabelPosComb{cpos}   = sprintf('%s_%s', parametersParadigm_LOC_MRI.aStrPositions{cpos}, parametersParadigm_LOC_MRI.aStrLabelPosShort{cpos});
    
end


%parametersParadigm_LOC_MRI.aStrLabelPosComb     = parametersParadigm_LOC_MRI.aStrLabelPosComb(parametersParadigm_LOC_MRI.vSortLabelPos);

%%% Define condition names for target analysis for all conditions combined (default analysis type)
for cc = 1:parametersParadigm_LOC_MRI.nTrialTypes
    parametersParadigm_LOC_MRI.aStrConditionTargetComb{cc} = parametersParadigm_LOC_MRI.aStrTrialTypes{cc};
end

%%% Define condition names for target analysis for each position (default analysis type)
cco = 0;
for cc = 1:parametersParadigm_LOC_MRI.nTrialTypes
    for cpos = 1:parametersParadigm_LOC_MRI.nPositions
        cco = cco + 1;
        parametersParadigm_LOC_MRI.aStrConditionTarget{cco} = sprintf('%s_%s', parametersParadigm_LOC_MRI.aStrTrialTypes{cc}, parametersParadigm_LOC_MRI.aStrPositions{cpos});
    end    
end

%%% Define condition names for positions analysis
parametersParadigm_LOC_MRI.aStrConditionPosition        = parametersParadigm_LOC_MRI.aStrPositions;

%%% Define hemifield conditions
%%% left / right
parametersParadigm_LOC_MRI.vPosLeftHemifield            = [2, 3];   % {'upperLeft'  'lowerLeft'}
parametersParadigm_LOC_MRI.vPosRightHemifield           = [1, 4];   % {'upperRight' 'lowerRight'}
%%% upper / lower
parametersParadigm_LOC_MRI.vPosUpperHemifield           = [2, 1];   % {'upperLeft'  'upperRight'}
parametersParadigm_LOC_MRI.vPosLowerHemifield           = [3, 4];   % {'lowerLeft'  'lowerRight'}

%%% 
parametersParadigm_LOC_MRI.aStrPosLeftHemifield         = parametersParadigm_LOC_MRI.aStrPositions(parametersParadigm_LOC_MRI.vPosLeftHemifield);
parametersParadigm_LOC_MRI.aStrPosRightHemifield        = parametersParadigm_LOC_MRI.aStrPositions(parametersParadigm_LOC_MRI.vPosRightHemifield);

parametersParadigm_LOC_MRI.aStrPosUpperHemifield        = parametersParadigm_LOC_MRI.aStrPositions(parametersParadigm_LOC_MRI.vPosUpperHemifield);
parametersParadigm_LOC_MRI.aStrPosLowerHemifield        = parametersParadigm_LOC_MRI.aStrPositions(parametersParadigm_LOC_MRI.vPosLowerHemifield);

%%% 
parametersParadigm_LOC_MRI.aStrLabelPosLeftHemifield    = parametersParadigm_LOC_MRI.aStrLabelPos(parametersParadigm_LOC_MRI.vPosLeftHemifield);
parametersParadigm_LOC_MRI.aStrLabelPosRightHemifield   = parametersParadigm_LOC_MRI.aStrLabelPos(parametersParadigm_LOC_MRI.vPosRightHemifield);

parametersParadigm_LOC_MRI.aStrLabelPosUpperHemifield   = parametersParadigm_LOC_MRI.aStrLabelPos(parametersParadigm_LOC_MRI.vPosUpperHemifield);
parametersParadigm_LOC_MRI.aStrLabelPosLowerHemifield   = parametersParadigm_LOC_MRI.aStrLabelPos(parametersParadigm_LOC_MRI.vPosLowerHemifield);


%%%
parametersParadigm_LOC_MRI.aStrAnalysesTypes                = {
                                                                parametersParadigm_LOC_MRI.strTarget
                                                                parametersParadigm_LOC_MRI.strPositionLong
                                                                %parametersParadigm_LOC_MRI.strTargetComb
                                                                };
parametersParadigm_LOC_MRI.nAnalysesTypes                   = numel(parametersParadigm_LOC_MRI.aStrAnalysesTypes);
parametersParadigm_LOC_MRI.indDefaultAnalysisType           = 1;
parametersParadigm_LOC_MRI.indAnalysisType                  = parametersParadigm_LOC_MRI.indDefaultAnalysisType;

parametersParadigm_LOC_MRI.aStrBehavioralParameters         = {
                                                                parametersParadigm_LOC_MRI.strAccuracy
                                                                parametersParadigm_LOC_MRI.strReactionTime
                                                                };
parametersParadigm_LOC_MRI.nBehavioralParameters            = numel(parametersParadigm_LOC_MRI.aStrBehavioralParameters);


parametersParadigm_LOC_MRI.aConditions                      = {
                                                                parametersParadigm_LOC_MRI.aStrConditionTarget
                                                                parametersParadigm_LOC_MRI.aStrConditionPosition
                                                                %parametersParadigm_LOC_MRI.aStrConditionTargetComb
                                                                };
parametersParadigm_LOC_MRI.aStrDefaultConditions            = parametersParadigm_LOC_MRI.aConditions{parametersParadigm_LOC_MRI.indDefaultAnalysisType};
parametersParadigm_LOC_MRI.aStrConditions                   = parametersParadigm_LOC_MRI.aStrDefaultConditions;
                                                            
parametersParadigm_LOC_MRI.aNrOfConditions                  = {
                                                                parametersParadigm_LOC_MRI.nConditionsTarget
                                                                parametersParadigm_LOC_MRI.nConditionsPosition
                                                                };

%%% Parameters for analysis of behavioral data
parametersParadigm_LOC_MRI.strTotalHits            = 'NrOfHits';
parametersParadigm_LOC_MRI.strTotalMisses          = 'NrOfMisses';
parametersParadigm_LOC_MRI.strTotalFalseAlarms     = 'NrOfFalseAlarms';

parametersParadigm_LOC_MRI.aStrBehavioralParameters = {
    parametersParadigm_LOC_MRI.strTotalHits
    parametersParadigm_LOC_MRI.strTotalMisses
    parametersParadigm_LOC_MRI.strTotalFalseAlarms
    };
                                                            


end

