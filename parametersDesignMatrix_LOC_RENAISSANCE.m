function parametersDesignMatrix_LOC = parametersDesignMatrix_LOC_ATWM1()
%%% This file contains the specifications for the BrainVoyager stimulation
%%% protocol of the fMRI version of the LOC paradigm

global iStudy

parametersParadigm_LOC_MRI = eval(['parametersParadigm_LOC_MRI_', iStudy]);

%%% General parameters
parametersDesignMatrix_LOC.strDesignMatrix              = 'DM';
parametersDesignMatrix_LOC.strStandardRegressors        = 'aStrStandardRegressors';
parametersDesignMatrix_LOC.strOnset                     = 'onset';
parametersDesignMatrix_LOC.strOffset                    = 'offset';
parametersDesignMatrix_LOC.strSwapTrial                 = 'swap';       % Swapping a trial between conditions is necessary to avoid regressors with zero trials

parametersDesignMatrix_LOC.strGap                       = '-';
parametersDesignMatrix_LOC.strJitter                    = '~';

parametersDesignMatrix_LOC.iResolution                  = 1;    %%% 1 = volumes; 2 = milliseconds
parametersDesignMatrix_LOC.strResolutionVolumes         = 'Volumes';
parametersDesignMatrix_LOC.strResolutionVolumesShort    = lower(parametersDesignMatrix_LOC.strResolutionVolumes(1:3));
parametersDesignMatrix_LOC.strResolutionMilliseconds    = 'msec';
parametersDesignMatrix_LOC.aStrResolution               = {
                                                            parametersDesignMatrix_LOC.strResolutionVolumes
                                                            parametersDesignMatrix_LOC.strResolutionMilliseconds
                                                            };
parametersDesignMatrix_LOC.strResolution                = parametersDesignMatrix_LOC.aStrResolution{parametersDesignMatrix_LOC.iResolution};

parametersDesignMatrix_LOC.strDesignMatrix              = 'DM';


%%% Define main trial phases
parametersDesignMatrix_LOC.aStrAllTrialPhases           = parametersParadigm_LOC_MRI.aStrTrialPhases;
parametersDesignMatrix_LOC.indMainTrialPhases           = [ 1 ];
parametersDesignMatrix_LOC.aStrMainTrialPhases          = parametersDesignMatrix_LOC.aStrAllTrialPhases(parametersDesignMatrix_LOC.indMainTrialPhases);
parametersDesignMatrix_LOC.nrOfMainTrialPhases          = numel(parametersDesignMatrix_LOC.aStrMainTrialPhases);

%%% Define number of task phases
parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions = {
                                                            [ 1 ]
                                                            };
parametersDesignMatrix_LOC.nrOfMainDesignMatrixBuilds   = numel(parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions);

for cmdmb = 1:parametersDesignMatrix_LOC.nrOfMainDesignMatrixBuilds
    parametersDesignMatrix_LOC.vNrOfTaskPhasesMainBuilds(cmdmb) = sum(parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions{cmdmb});
end

%%% Define tasks phase name
for cmdmb = 1:numel(parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions)
    ctp = 0;
    for cmtp = 1:parametersDesignMatrix_LOC.nrOfMainTrialPhases
        for ctsp = 1:parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions{cmdmb}(cmtp)
            ctp = ctp + 1;
            if isequal(parametersDesignMatrix_LOC.avNrOfTrialPhaseSubdivisions{cmdmb}(cmtp), 1)
                parametersDesignMatrix_LOC.aStrTrialPhasesMainBuilds{cmdmb}{ctp} = sprintf('%s', parametersDesignMatrix_LOC.aStrMainTrialPhases{cmtp});
            else
                parametersDesignMatrix_LOC.aStrTrialPhasesMainBuilds{cmdmb}{ctp} = sprintf('%s%i', parametersDesignMatrix_LOC.aStrMainTrialPhases{cmtp}, ctsp);
            end
        end
    end
end

%%% Define name of predictors / regressors
for cmdmb = 1:parametersDesignMatrix_LOC.nrOfMainDesignMatrixBuilds
    for cco = 1:parametersParadigm_LOC_MRI.nConditions
        for ctp = 1:parametersDesignMatrix_LOC.vNrOfTaskPhasesMainBuilds(cmdmb)
            parametersDesignMatrix_LOC.aStrRegressorsMainBuilds{cmdmb}{ctp, cco} = sprintf('%s_%s', parametersParadigm_LOC_MRI.aStrConditions{cco}, parametersDesignMatrix_LOC.aStrTrialPhasesMainBuilds{cmdmb}{ctp});
        end
    end
end

%%% Define design matrices
parametersDesignMatrix_LOC.aDesignMatrix = {
    %%% Column 1: Regressor Length (volumes)     Column 2: Gap Length (volumes)
    
    %%% 1 task phase
    [
    1   0
    ]
    
    %{
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
    %}
    };
parametersDesignMatrix_LOC.nrOfDesignMatrices   = numel(parametersDesignMatrix_LOC.aDesignMatrix);
parametersDesignMatrix_LOC.iDurationPredictor   = 1;
parametersDesignMatrix_LOC.iDurationGap         = 2;

%%% Create strings of all design matrix builds
for cdm = 1:parametersDesignMatrix_LOC.nrOfDesignMatrices
    strDesignMatrix = sprintf('%s-', parametersDesignMatrix_LOC.strDesignMatrix);
    nrOfTaskPhases = size(parametersDesignMatrix_LOC.aDesignMatrix{cdm});
    parametersDesignMatrix_LOC.vNrOfTaskPhases(cdm) = nrOfTaskPhases(1);
    for cr = 1:parametersDesignMatrix_LOC.vNrOfTaskPhases(cdm)
        durationPredictor   = parametersDesignMatrix_LOC.aDesignMatrix{cdm}(cr, parametersDesignMatrix_LOC.iDurationPredictor);
        durationGap         = parametersDesignMatrix_LOC.aDesignMatrix{cdm}(cr, parametersDesignMatrix_LOC.iDurationGap);
        strGap = '';
        if durationGap > 0
            for g = 1:durationGap
                strGap = [strGap, parametersDesignMatrix_LOC.strGap];
            end
        end
        if isequal(cr, parametersDesignMatrix_LOC.vNrOfTaskPhases(cdm) - 1)
            strGap = [strGap, parametersDesignMatrix_LOC.strJitter];
        end
        strDesignMatrix = [strDesignMatrix, num2str(durationPredictor), strGap];
    end
    parametersDesignMatrix_LOC.aStrDesignMatrixBuild{cdm} = strDesignMatrix;
end

%%% Determine the default design matrix
parametersDesignMatrix_LOC.indDefaultDesignMatrix       = 1;
parametersDesignMatrix_LOC.vDefaultDesignMatrix         = parametersDesignMatrix_LOC.aDesignMatrix{parametersDesignMatrix_LOC.indDefaultDesignMatrix};
parametersDesignMatrix_LOC.strDefaultDesignMatrixBuild  = parametersDesignMatrix_LOC.aStrDesignMatrixBuild{parametersDesignMatrix_LOC.indDefaultDesignMatrix};

parametersDesignMatrix_LOC.indDesignMatrix              = parametersDesignMatrix_LOC.indDefaultDesignMatrix;
parametersDesignMatrix_LOC.vDesignMatrix                = parametersDesignMatrix_LOC.vDefaultDesignMatrix;
parametersDesignMatrix_LOC.strDesignMatrixBuild         = parametersDesignMatrix_LOC.strDefaultDesignMatrixBuild;
parametersDesignMatrix_LOC.nrOfTaskPhases               = parametersDesignMatrix_LOC.vNrOfTaskPhases(parametersDesignMatrix_LOC.indDesignMatrix);
parametersDesignMatrix_LOC.nrOfRegressors               = parametersDesignMatrix_LOC.nrOfTaskPhases * parametersParadigm_LOC_MRI.nConditions;
parametersDesignMatrix_LOC.indDesignMatrixMainBuild     = find(ismember(parametersDesignMatrix_LOC.vNrOfTaskPhasesMainBuilds, parametersDesignMatrix_LOC.nrOfTaskPhases));
parametersDesignMatrix_LOC.aStrTrialPhases              = parametersDesignMatrix_LOC.aStrTrialPhasesMainBuilds{parametersDesignMatrix_LOC.indDesignMatrixMainBuild};
parametersDesignMatrix_LOC.aStrRegressors               = parametersDesignMatrix_LOC.aStrRegressorsMainBuilds{parametersDesignMatrix_LOC.indDesignMatrixMainBuild};
parametersDesignMatrix_LOC.aStrStandardRegressorsTarget = parametersDesignMatrix_LOC.aStrRegressorsMainBuilds{parametersDesignMatrix_LOC.indDesignMatrixMainBuild};

parametersDesignMatrix_LOC.bDesignMatrixSelected        = false;
parametersDesignMatrix_LOC.bSwapTrials                  = false;


end