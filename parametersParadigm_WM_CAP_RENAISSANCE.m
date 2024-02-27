function parametersParadigm = parametersParadigm_WM_CAP_ATWM1()
%%% (c) Robert Bittner
%%% Study: ATWM1_WM_CAP
%%% This function contains the specifications of the stimuli and all other
%%% parameters, e.g. timing. 

parametersParadigm.strExperiment = 'WM_CAP';

parametersParadigm.changeSpecificationIndex.noChange    = 'NoChange';
parametersParadigm.changeSpecificationIndex.change      = 'Change';

parametersParadigm.stimulusShape = {
    'circle'
%    'square'
    };
parametersParadigm.stimulusShape = sort(parametersParadigm.stimulusShape);

parametersParadigm.stimulusColor = {
    'black'
    'blue'
    'green'
    'red'
    'violet'
    'white'
    'yellow'
    };
parametersParadigm.stimulusColor = sort(parametersParadigm.stimulusColor);


%%% The file names of the blue and red stimuli are defined
for cshape = 1:length(parametersParadigm.stimulusShape)
    for ccol = 1:length(parametersParadigm.stimulusColor)
        parametersParadigm.stimulusArray{cshape, ccol} = sprintf('%s_%s', parametersParadigm.stimulusShape{cshape}, parametersParadigm.stimulusColor{ccol});
    end
end

parametersParadigm.blank            = 'blank'; 
parametersParadigm.fixationCross    = 'fixation_cross_black';
parametersParadigm.alertingCross    = 'fixation_cross_red';

parametersParadigm.strFirstTrial    = 'alerting_cross';

parametersParadigm.wmLoadLevelVector    = [2, 4, 6, 8];
parametersParadigm.wmLoadLevelVector    = [4];

parametersParadigm.wmLoad               = 4;
parametersParadigm.nrOfProbes           = parametersParadigm.wmLoad;

parametersParadigm.encodingTime = 200;
parametersParadigm.intertrialInterval = 3000;
parametersParadigm.totalIntertrialInterval = 3000;
parametersParadigm.alertTime = 500;
parametersParadigm.preparationTime = 500;
parametersParadigm.totalDelayInterval = 2000;                  %%% This is the total delay interval, 
parametersParadigm.delayInterval = parametersParadigm.totalDelayInterval - parametersParadigm.encodingTime;                %%% This is the total delay interval, 
parametersParadigm.retrievalTime = 3000;

parametersParadigm.totalTrialLength = parametersParadigm.alertTime + parametersParadigm.preparationTime + parametersParadigm.encodingTime + parametersParadigm.delayInterval + parametersParadigm.retrievalTime;

parametersParadigm.nTrialsPerCondition = 60;
parametersParadigm.nRuns = 1;
parametersParadigm.nTrialsPerRun = 60;

parametersParadigm.iFirstTrial                  = '1_Load_4';
parametersParadigm.iTrial                       = 'Load_4';

parametersParadigm.iResponse                    = 'Response';
parametersParadigm.noChange                     = 'NoChange';
parametersParadigm.Change                       = '_Change';    % The "_" sign is crucial


parametersParadigm.noChangeResponse             = 10;
parametersParadigm.ChangeResponse               = 20;
parametersParadigm.missingResponse              = 30;



end