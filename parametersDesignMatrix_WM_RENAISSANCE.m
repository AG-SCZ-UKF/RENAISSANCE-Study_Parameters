function parametersDesignMatrix_WM = parametersDesignMatrix_WM_ATWM1()
%%% This file contains the specifications for the BrainVoyager stimulation
%%% protocol of the fMRI version of the WMC2 paradigm

global iStudy

parametersParadigm_WM_MRI = eval(['parametersParadigm_WM_MRI_', iStudy]);

%%% General parameters
parametersDesignMatrix_WM.strDesignMatrix           = 'DM';
parametersDesignMatrix_WM.strStandardRegressors     = 'aStrStandardRegressors';
parametersDesignMatrix_WM.strOnset                  = 'onset';
parametersDesignMatrix_WM.strOffset                 = 'offset';
parametersDesignMatrix_WM.strSwapTrial              = 'swap';       % Swapping a trial between conditions is necessary to avoid regressors with zero trials

parametersDesignMatrix_WM.strGap                    = '-';
parametersDesignMatrix_WM.strJitter                 = '~';

parametersDesignMatrix_WM.iResolution               = 1;    %%% 1 = volumes; 2 = milliseconds
parametersDesignMatrix_WM.strResolutionVolumes      = 'Volumes';
parametersDesignMatrix_WM.strResolutionVolumesShort = lower(parametersDesignMatrix_WM.strResolutionVolumes(1:3));

parametersDesignMatrix_WM.strResolutionMilliseconds = 'msec';
parametersDesignMatrix_WM.aStrResolution            = {
                                                        parametersDesignMatrix_WM.strResolutionVolumes
                                                        parametersDesignMatrix_WM.strResolutionMilliseconds
                                                        };
parametersDesignMatrix_WM.strResolution             = parametersDesignMatrix_WM.aStrResolution{parametersDesignMatrix_WM.iResolution};

%%% Define main trial phases
parametersDesignMatrix_WM.aStrAllTrialPhases        = parametersParadigm_WM_MRI.aStrTrialPhases;
parametersDesignMatrix_WM.indMainTrialPhases        = [ 3 4 5 ];
parametersDesignMatrix_WM.aStrMainTrialPhases       = parametersDesignMatrix_WM.aStrAllTrialPhases(parametersDesignMatrix_WM.indMainTrialPhases);
parametersDesignMatrix_WM.nrOfMainTrialPhases       = numel(parametersDesignMatrix_WM.aStrMainTrialPhases);

%%% Define number of task phases
parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions  = {
                                                            [ 1 2 1 ]
                                                            [ 1 3 1 ]
                                                            };
parametersDesignMatrix_WM.nrOfMainDesignMatrixBuilds    = numel(parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions);

for cmdmb = 1:parametersDesignMatrix_WM.nrOfMainDesignMatrixBuilds
    parametersDesignMatrix_WM.vNrOfTaskPhasesMainBuilds(cmdmb)       = sum(parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions{cmdmb});
end

%%% Define tasks phase name
for cmdmb = 1:numel(parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions)
    ctp = 0;
    for cmtp = 1:parametersDesignMatrix_WM.nrOfMainTrialPhases
        for ctsp = 1:parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions{cmdmb}(cmtp)
            ctp = ctp + 1;
            if isequal(parametersDesignMatrix_WM.avNrOfTrialPhaseSubdivisions{cmdmb}(cmtp), 1)
                parametersDesignMatrix_WM.aStrTrialPhasesMainBuilds{cmdmb}{ctp} = sprintf('%s', parametersDesignMatrix_WM.aStrMainTrialPhases{cmtp});
            else
                parametersDesignMatrix_WM.aStrTrialPhasesMainBuilds{cmdmb}{ctp} = sprintf('%s%i', parametersDesignMatrix_WM.aStrMainTrialPhases{cmtp}, ctsp);
            end
        end
    end
end

%%% Define name of predictors / regressors
for cmdmb = 1:parametersDesignMatrix_WM.nrOfMainDesignMatrixBuilds
    for cco = 1:parametersParadigm_WM_MRI.nConditions
        for ctp = 1:parametersDesignMatrix_WM.vNrOfTaskPhasesMainBuilds(cmdmb)
            parametersDesignMatrix_WM.aStrRegressorsMainBuilds{cmdmb}{ctp, cco} = sprintf('%s_%s', parametersParadigm_WM_MRI.aConditions{cco}, parametersDesignMatrix_WM.aStrTrialPhasesMainBuilds{cmdmb}{ctp});
        end
    end
end


%%% Define design matrices
parametersDesignMatrix_WM.aDesignMatrix = {
    %%% Column 1: Regressor Length (volumes)     Column 2: Gap Length (volumes)
    
    %%% 4 task phases
    [
    2   0
    1   0
    1   0
    2   0
    ]
    
    %%% 5 task phases
    [
    2   0
    1   0
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
parametersDesignMatrix_WM.nrOfDesignMatrices    = numel(parametersDesignMatrix_WM.aDesignMatrix);
parametersDesignMatrix_WM.iDurationPredictor    = 1;
parametersDesignMatrix_WM.iDurationGap          = 2;

%%% Create strings of all design matrix builds
for cdm = 1:parametersDesignMatrix_WM.nrOfDesignMatrices
    strDesignMatrix = sprintf('%s-', parametersDesignMatrix_WM.strDesignMatrix);
    parametersDesignMatrix_WM.vNrOfTaskPhases(cdm) = length(parametersDesignMatrix_WM.aDesignMatrix{cdm});
    for cr = 1:parametersDesignMatrix_WM.vNrOfTaskPhases(cdm)
        durationPredictor   = parametersDesignMatrix_WM.aDesignMatrix{cdm}(cr, parametersDesignMatrix_WM.iDurationPredictor);
        durationGap         = parametersDesignMatrix_WM.aDesignMatrix{cdm}(cr, parametersDesignMatrix_WM.iDurationGap);
        strGap = '';
        if durationGap > 0
            for g = 1:durationGap
                strGap = [strGap, parametersDesignMatrix_WM.strGap];
            end
        end
        if isequal(cr, parametersDesignMatrix_WM.vNrOfTaskPhases(cdm) - 1)
            strGap = [strGap, parametersDesignMatrix_WM.strJitter];
        end
        strDesignMatrix = [strDesignMatrix, num2str(durationPredictor), strGap];
    end
    parametersDesignMatrix_WM.aStrDesignMatrixBuild{cdm} = strDesignMatrix;
end

%%% Determine the default design matrix
parametersDesignMatrix_WM.indDefaultDesignMatrix        = 2;
parametersDesignMatrix_WM.vDefaultDesignMatrix          = parametersDesignMatrix_WM.aDesignMatrix{parametersDesignMatrix_WM.indDefaultDesignMatrix};
parametersDesignMatrix_WM.strDefaultDesignMatrixBuild   = parametersDesignMatrix_WM.aStrDesignMatrixBuild{parametersDesignMatrix_WM.indDefaultDesignMatrix};


parametersDesignMatrix_WM.indDesignMatrix                       = parametersDesignMatrix_WM.indDefaultDesignMatrix;
parametersDesignMatrix_WM.vDesignMatrix                         = parametersDesignMatrix_WM.vDefaultDesignMatrix;
parametersDesignMatrix_WM.strDesignMatrixBuild                  = parametersDesignMatrix_WM.strDefaultDesignMatrixBuild;
parametersDesignMatrix_WM.nrOfTaskPhases                        = parametersDesignMatrix_WM.vNrOfTaskPhases(parametersDesignMatrix_WM.indDesignMatrix);
parametersDesignMatrix_WM.nrOfRegressors                        = parametersDesignMatrix_WM.nrOfTaskPhases * parametersParadigm_WM_MRI.nConditions;
parametersDesignMatrix_WM.indDesignMatrixMainBuild              = find(ismember(parametersDesignMatrix_WM.vNrOfTaskPhasesMainBuilds, parametersDesignMatrix_WM.nrOfTaskPhases));
parametersDesignMatrix_WM.aStrTrialPhases                       = parametersDesignMatrix_WM.aStrTrialPhasesMainBuilds{parametersDesignMatrix_WM.indDesignMatrixMainBuild};
parametersDesignMatrix_WM.aStrRegressors                        = parametersDesignMatrix_WM.aStrRegressorsMainBuilds{parametersDesignMatrix_WM.indDesignMatrixMainBuild};
parametersDesignMatrix_WM.aStrStandardRegressorsSalienceCue     = parametersDesignMatrix_WM.aStrRegressorsMainBuilds{parametersDesignMatrix_WM.indDesignMatrixMainBuild};


parametersDesignMatrix_WM.bDesignMatrixSelected                 = false;
parametersDesignMatrix_WM.bSwapTrials                           = false;

end