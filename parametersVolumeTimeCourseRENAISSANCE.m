function parametersVolumeTimeCourse = parametersVolumeTimeCourseATWM1()

parametersVolumeTimeCourse.dataType                 = 2;        %%% 1 = int16, 2 = float32
parametersVolumeTimeCourse.resolution               = 3;        %%% possible resolutions: 1, 2 or 3 mm^2
parametersVolumeTimeCourse.interpolationMethod      = 2;        %%% 0 = nearest neighbor interpolation, 1 = trilinear interpolation, 2 = sinc interpolation

parametersVolumeTimeCourse.threshold                = 1;        %%% 100 is the default value in BrainVoyager, which would lead to "holes"
parametersVolumeTimeCourse.bUseBoundingBox          = true;     %%% The default value is true
parametersVolumeTimeCourse.bUseExtendedBoundingBox  = false;    %%% The default value is false

parametersVolumeTimeCourse.indInterpolationMethod   = parametersVolumeTimeCourse.interpolationMethod + 1;
parametersVolumeTimeCourse.aStrInterpolationMethod  = {
                                                        'nearest neighbor interpolation'
                                                        'trilinear interpolation'
                                                        'sinc interpolation'
                                                        };
parametersVolumeTimeCourse.strInterpolationMethod   = parametersVolumeTimeCourse.aStrInterpolationMethod{parametersVolumeTimeCourse.indInterpolationMethod};
parametersVolumeTimeCourse.strResolution            = sprintf('%imm', parametersVolumeTimeCourse.resolution);


end