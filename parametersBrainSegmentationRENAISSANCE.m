function parametersBrainSegmentation = parametersBrainSegmentationATWM1()

parametersBrainSegmentation.strSegmentation             = 'SEGM';
parametersBrainSegmentation.strWhiteMatterBoundary      = 'WM';
parametersBrainSegmentation.strBridgeRemoval            = 'BL2';
parametersBrainSegmentation.strManualCorrection         = 'MAN_COR';
parametersBrainSegmentation.strVmrFinalSegm             = 'strVmrFinalSegm';


parametersBrainSegmentation.strLeftHemisphere           = 'LH';
parametersBrainSegmentation.strRightHemisphere          = 'RH';
parametersBrainSegmentation.aStrHemispheres             = {
                                                            parametersBrainSegmentation.strLeftHemisphere
                                                            parametersBrainSegmentation.strRightHemisphere
                                                            };
parametersBrainSegmentation.nHemispheres                = numel(parametersBrainSegmentation.aStrHemispheres);                                                                

parametersBrainSegmentation.strLeftHemisphereLong       = 'leftHemisphere';
parametersBrainSegmentation.strRightHemisphereLong      = 'rightHemisphere';

parametersBrainSegmentation.aStrHemispheresLong         = {
                                                            parametersBrainSegmentation.strLeftHemisphereLong
                                                            parametersBrainSegmentation.strRightHemisphereLong
                                                            };

parametersBrainSegmentation.strVmrFinalSegmLH           = sprintf('%s%s', parametersBrainSegmentation.strVmrFinalSegm, parametersBrainSegmentation.strLeftHemisphere);
parametersBrainSegmentation.strVmrFinalSegmRH           = sprintf('%s%s', parametersBrainSegmentation.strVmrFinalSegm, parametersBrainSegmentation.strRightHemisphere);

parametersBrainSegmentation.aStrVmrFinalSegm                = {
                                                                parametersBrainSegmentation.strVmrFinalSegmLH
                                                                parametersBrainSegmentation.strVmrFinalSegmRH
                                                                    };


%%% These parameters determine the final segementation threshold
parametersBrainSegmentation.vRangeSegmThresholds        = 110:130;

parametersBrainSegmentation.vCorrectionFactorOperators  = [
                                                            1
                                                            -1
                                                            ];
parametersBrainSegmentation.correctionFactorOperator    = parametersBrainSegmentation.vCorrectionFactorOperators(2);

parametersBrainSegmentation.aCorrectionFactors          = [
                                                            0.0
                                                            0.025
                                                            0.05
                                                            0.075
                                                            0.1
                                                            ];
parametersBrainSegmentation.aCorrectionFactors          = parametersBrainSegmentation.aCorrectionFactors * parametersBrainSegmentation.correctionFactorOperator;
parametersBrainSegmentation.indCorrectionFactors        = 5;
parametersBrainSegmentation.correctionFactor            = parametersBrainSegmentation.aCorrectionFactors(parametersBrainSegmentation.indCorrectionFactors);



end