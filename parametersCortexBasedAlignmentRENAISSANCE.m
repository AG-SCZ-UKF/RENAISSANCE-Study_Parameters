function parametersCortexBasedAlignment = parametersCortexBasedAlignmentATWM1()

parametersCortexBasedAlignment.calFileVersion = 1;
parametersCortexBasedAlignment.galFileVersion = 1;
parametersCortexBasedAlignment.gapFileVersion = 2;
parametersCortexBasedAlignment.salFileVersion = 1;

parametersCortexBasedAlignment.strPreCba    = 'GROUPALIGNED_INV';
parametersCortexBasedAlignment.strPostCba   = 'GROUPALIGNED';

parametersCortexBasedAlignment.aStrCba      = {
                                                parametersCortexBasedAlignment.strPreCba
                                                parametersCortexBasedAlignment.strPostCba
                                                };
parametersCortexBasedAlignment.nCbaMorphs   = numel(parametersCortexBasedAlignment.aStrCba);

parametersCortexBasedAlignment.indPreCba    = find(strcmp(parametersCortexBasedAlignment.aStrCba, parametersCortexBasedAlignment.strPreCba));
parametersCortexBasedAlignment.indPostCba   = find(strcmp(parametersCortexBasedAlignment.aStrCba, parametersCortexBasedAlignment.strPostCba));

%parametersCortexBasedAlignment.indDefaultCba    = 2;
%parametersCortexBasedAlignment.strCba           = parametersCortexBasedAlignment.aStrCba{parametersCortexBasedAlignment.indDefaultCba};


parametersCortexBasedAlignment.iTargetCurvatureFile         = 1;    % Parameter unclear

%%% Original Cba parameters, written in gap file
parametersCortexBasedAlignment.nSmoothLevels                = 4;
parametersCortexBasedAlignment.nParameters                  = 4;
parametersCortexBasedAlignment.alignForceOriginalValues     = [1, 1.5, 2.5, 4.5];
parametersCortexBasedAlignment.smoothForceOriginalValues    = [0.6, 0.8, 1, 1.2];
parametersCortexBasedAlignment.nIterationsOriginalValues    = [300, 300, 300, 300];
parametersCortexBasedAlignment.nUpdatesOriginalValues       = [3, 3, 4, 4];

%%% Modified Cba parameters, written in gap file
parametersCortexBasedAlignment.multiplierIterations         = 8;
parametersCortexBasedAlignment.alignForce                   = parametersCortexBasedAlignment.alignForceOriginalValues; %[1, 1.5, 2.5, 4.5];
parametersCortexBasedAlignment.smoothForce                  = parametersCortexBasedAlignment.smoothForceOriginalValues; %[0.6, 0.8, 1, 1.2];
parametersCortexBasedAlignment.nIterations                  = parametersCortexBasedAlignment.nIterationsOriginalValues * parametersCortexBasedAlignment.multiplierIterations;
parametersCortexBasedAlignment.nUpdates                     = parametersCortexBasedAlignment.nUpdatesOriginalValues * parametersCortexBasedAlignment.multiplierIterations;

end