function parametersEpiDistortionCorrection = parametersEpiDistortionCorrectionATWM1()

parametersEpiDistortionCorrection.strDistortionCorrection           = 'undist';
parametersEpiDistortionCorrection.bUseDistortionCorrecteFmrFiles    = true;

%%% Parameters for GRE-field mapping
parametersEpiDistortionCorrection.echoSpacing                       = 500; % measured in microseconds
parametersEpiDistortionCorrection.nPhaseEncodingLines               = 64;
parametersEpiDistortionCorrection.echoTimeDifference                = 2.46;
parametersEpiDistortionCorrection.phaseEncodingDirection            = '+y'; % +y = A>>P
%parametersEpiDistortionCorrection.bandwidthInPhaseEncodingDirection = '1 / (echo spacing in seconds * number of phase encoding lines)'
parametersEpiDistortionCorrection.bandwidthInPhaseEncodingDirection = 31.25; %1 / (parametersEpiDistortionCorrection.echoSpacing / 1000000 * parametersEpiDistortionCorrection.nPhaseEncodingLines))


%%% Parameters for COPE (Correction based on Opposite Phase Encoding)
%%% approach
parametersEpiDistortionCorrection.strMethodCope                     = 'COPE';
parametersEpiDistortionCorrection.strMethod                         = parametersEpiDistortionCorrection.strMethodCope;
parametersEpiDistortionCorrection.strStandardPhaseEncoding          = 'StandardPhaseEncoding';
parametersEpiDistortionCorrection.strInversePhaseEncoding           = 'InversePhaseEncoding';
parametersEpiDistortionCorrection.aStrPhaseEncoding                 = {
                                                                        parametersEpiDistortionCorrection.strStandardPhaseEncoding
                                                                        parametersEpiDistortionCorrection.strInversePhaseEncoding
                                                                        };

parametersEpiDistortionCorrection.strPhaseEncodingDirection         = 'AP'; 
parametersEpiDistortionCorrection.strStandardPhaseEncodingDirection = parametersEpiDistortionCorrection.strPhaseEncodingDirection; 
parametersEpiDistortionCorrection.strInversePhaseEncodingDirection  = flip(parametersEpiDistortionCorrection.strPhaseEncodingDirection);
parametersEpiDistortionCorrection.aStrPhaseEncodingDirections       = {
                                                                        parametersEpiDistortionCorrection.strStandardPhaseEncodingDirection
                                                                        parametersEpiDistortionCorrection.strInversePhaseEncodingDirection
                                                                        };
parametersEpiDistortionCorrection.indStandardPhaseEncodingDirection = find(contains(parametersEpiDistortionCorrection.aStrPhaseEncodingDirections, parametersEpiDistortionCorrection.strStandardPhaseEncodingDirection));
parametersEpiDistortionCorrection.indInversePhaseEncodingDirection  = find(contains(parametersEpiDistortionCorrection.aStrPhaseEncodingDirections, parametersEpiDistortionCorrection.strInversePhaseEncodingDirection));

parametersEpiDistortionCorrection.strVoxelDisplacementMap           = 'vdm'; 

parametersEpiDistortionCorrection.nVolumes                          = 3;
parametersEpiDistortionCorrection.nVolumesToSkip                    = 2;
parametersEpiDistortionCorrection.nVolumesFmr                       = parametersEpiDistortionCorrection.nVolumes-parametersEpiDistortionCorrection.nVolumesToSkip;


parametersEpiDistortionCorrection.AutoIT.timeEstimateDistortion     = 30000;     % milliseconds
parametersEpiDistortionCorrection.AutoIT.timeCorrectDistortion      = 16000;     % milliseconds

end