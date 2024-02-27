function parametersMriSessionStandard = parametersMriSessionStandardATWM1()

global iStudy
iStudy = 'ATWM1'

parametersMriSessionStandard.strFileIndexFmr_WM                 = 'fileIndexFmr_WM';
parametersMriSessionStandard.strFileIndexFmr_LOC                = 'fileIndexFmr_LOC';
parametersMriSessionStandard.strFileIndexFmr_COPE               = 'fileIndexFmr_COPE';
parametersMriSessionStandard.strFileIndexVmrHighRes             = 'fileIndexVmrHighRes';
parametersMriSessionStandard.strFileIndexVmrLowRes              = 'fileIndexVmrLowRes';
parametersMriSessionStandard.strFileIndexAnatomicalLocalizer    = 'fileIndexAnatomicalLocalizer';

parametersMriSessionStandard.aStrFileIndices    = {
                                                    parametersMriSessionStandard.strFileIndexFmr_WM
                                                    parametersMriSessionStandard.strFileIndexFmr_LOC
                                                    parametersMriSessionStandard.strFileIndexFmr_COPE
                                                    parametersMriSessionStandard.strFileIndexVmrHighRes
                                                    parametersMriSessionStandard.strFileIndexVmrLowRes
                                                    parametersMriSessionStandard.strFileIndexAnatomicalLocalizer
                                                    };

parametersMriSessionStandard.indFileIndexFmr_WM                 = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexFmr_WM));
parametersMriSessionStandard.indFileIndexFmr_LOC                = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexFmr_LOC));
parametersMriSessionStandard.indFileIndexFmr_COPE               = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexFmr_COPE));
parametersMriSessionStandard.indFileIndexVmrHighRes             = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexVmrHighRes));
parametersMriSessionStandard.indFileIndexVmrLowRes              = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexVmrLowRes));
parametersMriSessionStandard.indFileIndexAnatomicalLocalizer    = find(contains(parametersMriSessionStandard.aStrFileIndices, parametersMriSessionStandard.strFileIndexAnatomicalLocalizer));

parametersMriSessionStandard.aIndFileIndices    = {
                                                    parametersMriSessionStandard.indFileIndexFmr_WM
                                                    parametersMriSessionStandard.indFileIndexFmr_LOC
                                                    parametersMriSessionStandard.indFileIndexFmr_COPE
                                                    parametersMriSessionStandard.indFileIndexVmrHighRes
                                                    parametersMriSessionStandard.indFileIndexVmrLowRes
                                                    parametersMriSessionStandard.indFileIndexAnatomicalLocalizer
                                                    };
                                                
parametersMriSessionStandard.nRunTypesToAnalyze  = numel(parametersMriSessionStandard.aIndFileIndices) - 1;


%%

% parametersMriSessionStandard.fileIndexFmr_WM
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_WM))    = [
                                                    3
                                                    5
                                                    7
                                                    9
                                                    ];

% parametersMriSessionStandard.fileIndexFmr_LOC
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_LOC))   = 12;

% parametersMriSessionStandard.fileIndexFmr_COPE                                                
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_COPE))  = [
                                                    2
                                                    4
                                                    6
                                                    8
                                                    11
                                                    ];

% parametersMriSessionStandard.fileIndexVmrHighRes
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexVmrHighRes))    = 10;

% parametersMriSessionStandard.fileIndexVmrLowRes
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexVmrLowRes))     = 14;

% parametersMriSessionStandard.fileIndexAnatomicalLocalizer
parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexAnatomicalLocalizer))   = [
                                                                1
                                                                13
                                                                ];

parametersMriSessionStandard.nMeasurementsInRun = [
	3
	3
	225
	3
	225
	3
	225
	3
	225
	192
	3
	170
	3
	96
	];

parametersMriSessionStandard.fileIndexInvalidRuns = [
	];

parametersMriSessionStandard.bVerified = 1;
                                                            
parametersMriSessionStandard.bAdditionalLocalizer   = false;
parametersMriSessionStandard.nAnatomicalLocalizers  = numel(parametersMriSessionStandard.fileIndexAnatomicalLocalizer);

%%{
aStrFieldnames = fieldnames(parametersMriSessionStandard);
indFileFieldnames = contains(aStrFieldnames, 'fileIndex');
aStrValidFieldnames = aStrFieldnames(indFileFieldnames);
vFileIndices = [];
for cfn = 1:numel(aStrValidFieldnames)
    vFileIndices = [vFileIndices, (parametersMriSessionStandard.(matlab.lang.makeValidName(aStrValidFieldnames{cfn})))'];
end
vFileIndices = sort(vFileIndices);
parametersMriSessionStandard.nRuns = max(vFileIndices);
%}


parametersMriSessionStandard.bVerified = false;

parametersMriSessionStandard = addDescriptionsToParametersMriSessionStandardATWM1(parametersMriSessionStandard);


end


function parametersMriSessionStandard = addDescriptionsToParametersMriSessionStandardATWM1(parametersMriSessionStandard)
%%% Add a description for each parameter set

global iStudy

parametersStudy = eval(['parametersStudy', iStudy]);

parametersStructuralMriSequenceHighRes  = eval(['parametersStructuralMriSequenceHighRes', iStudy]);
parametersStructuralMriSequenceLowRes   = eval(['parametersStructuralMriSequenceLowRes', iStudy]);

% Working memory EPIs
for cr = 1:numel(parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_WM)))
    parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_WM)){cr} = sprintf('%s_%s_run_%i', parametersStudy.strEpi, parametersStudy.strFullWorkingMemoryTask, cr);
end

% COPE EPIs
for cr = 1:numel(parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_WM)))
    parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_COPE)){cr} = sprintf('%s_%s_run_%i_%s', parametersStudy.strEpi, parametersStudy.strFullWorkingMemoryTask, cr, parametersStudy.strMethodEpiDistortionCorrection);
end
n = numel(parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_WM)));
for cr = 1:numel(parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_LOC)))
    parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_COPE)){n + cr} = sprintf('%s_%s_run_%i_%s', parametersStudy.strEpi, parametersStudy.strFullLocalizerTask, cr, parametersStudy.strMethodEpiDistortionCorrection);
end

% Localizer EPIs
for cr = 1:numel(parametersMriSessionStandard.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_LOC)))
    parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexFmr_LOC)){cr} = sprintf('%s_%s_run_%i', parametersStudy.strEpi, parametersStudy.strFullLocalizerTask, cr);
end

% High-res anatomy
parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexVmrHighRes)) = {sprintf('%s_anatomy', parametersStructuralMriSequenceHighRes.strSequence)};

% Low-res anatomy
parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexVmrLowRes)) = {sprintf('%s_anatomy', parametersStructuralMriSequenceLowRes.strSequence)};

% Anatomical localizers
for cr = 1:parametersMriSessionStandard.nAnatomicalLocalizers
    parametersMriSessionStandard.strDescription.(matlab.lang.makeValidName(parametersMriSessionStandard.strFileIndexAnatomicalLocalizer)){cr} = sprintf('%s_run_%i', parametersStudy.strFullAnatomicalLocalizer, cr);
end

% Invalid runs
parametersMriSessionStandard.strDescription.fileIndexInvalidRuns = {sprintf('Invalid_runs')};

end