function parametersSliceScanTimeCorrection = parametersSliceScanTimeCorrectionATWM1()

parametersSliceScanTimeCorrection.strPreprocessingStep              = 'Slice scan time correction';
parametersSliceScanTimeCorrection.interpolationMethod               = 2;        % Interpolation method: 0 = trilinear, 1 = cubic spline, 2 = windowed SINC 
parametersSliceScanTimeCorrection.modIndInterpolationMethod         = parametersSliceScanTimeCorrection.interpolationMethod + 1;

parametersSliceScanTimeCorrection.aStrInterpolationMethods          = { 
                                                                        'trilinear'
                                                                        'cubic spline'
                                                                        'windowed SINC'
                                                                        };

parametersSliceScanTimeCorrection.aStrAbbrInterpolationMethods      = { 
                                                                        'SCLD'
                                                                        'SCCD'
                                                                        'SCSD'
                                                                        };
parametersSliceScanTimeCorrection.strInterpolationMethod            = parametersSliceScanTimeCorrection.aStrInterpolationMethods{parametersSliceScanTimeCorrection.modIndInterpolationMethod};
parametersSliceScanTimeCorrection.strAbbrInterpolationMethod        = parametersSliceScanTimeCorrection.aStrAbbrInterpolationMethods{parametersSliceScanTimeCorrection.modIndInterpolationMethod};


end