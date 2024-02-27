function parametersMotionCorrection = parametersMotionCorrectionATWM1()

parametersMotionCorrection.strPreprocessingStep             = '3D motion correction';
parametersMotionCorrection.interpolationMethod              = 2;
parametersMotionCorrection.targetVolume                     = 1;
parametersMotionCorrection.reduceDataSet                    = false;    %unknown property
parametersMotionCorrection.maxNumberOfIterations            = 100;
parametersMotionCorrection.generateMovies                   = false;    % generate no movies, other parameters are used for evaluation of motion artifacts. 
parametersMotionCorrection.generatExtendedLogFile           = true;
parametersMotionCorrection.aStrInterpolationMethods         = { 
                                                                'trilinear / trilinear'
                                                                'trilinear / sinc'          % recommended option
                                                                'sinc / sinc'
                                                                };
parametersMotionCorrection.aStrAbbrMotionCorrection         = '3DMC';
parametersMotionCorrection.aStrAbbrMotionCorrectionMethods  = {
                                                                '3DMCT'
                                                                '3DMCTS'
                                                                '3DMCS'
                                                                };
parametersMotionCorrection.strInterpolationMethod           = parametersMotionCorrection.aStrInterpolationMethods{parametersMotionCorrection.interpolationMethod};
parametersMotionCorrection.strAbbrInterpolationMethod       = parametersMotionCorrection.aStrAbbrMotionCorrectionMethods{parametersMotionCorrection.interpolationMethod};


end