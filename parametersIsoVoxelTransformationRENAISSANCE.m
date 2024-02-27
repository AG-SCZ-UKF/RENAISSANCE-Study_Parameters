function parametersIsoVoxelTransformation = parametersIsoVoxelTransformationATWM1()

parametersIsoVoxelTransformation.strPreprocessingStep       = 'Iso-Voxel Transformation';
parametersIsoVoxelTransformation.strIsoVoxelTransformation  = 'ISO';
parametersIsoVoxelTransformation.interpolationMethod        = 3;            % 1 = trilinear; 2 = cubic spline; 3 = sinc
parametersIsoVoxelTransformation.targetResolution           = 1; 
parametersIsoVoxelTransformation.framingCubeDimension       = 256;
parametersIsoVoxelTransformation.aStrInterpolationMethods   = { 
                                                                'trilinear'
                                                                'cubic spline'          % recommended option
                                                                'sinc'
                                                                };
parametersIsoVoxelTransformation.strInterpolationMethod     = parametersIsoVoxelTransformation.aStrInterpolationMethods{parametersIsoVoxelTransformation.interpolationMethod};


end