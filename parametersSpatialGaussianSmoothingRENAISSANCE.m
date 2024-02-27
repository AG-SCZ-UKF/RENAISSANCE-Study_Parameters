function parametersSpatialGaussianSmoothing = parametersSpatialGaussianSmoothingATWM1()

parametersSpatialGaussianSmoothing.strPreprocessingStep             = '3D spatial gaussian smoothing';
parametersSpatialGaussianSmoothing.fwhm                             = 8; 
parametersSpatialGaussianSmoothing.strUnit                          = 'mm';
parametersSpatialGaussianSmoothing.strSpatialSmoothingMethod        = 'SD3DSS';
parametersSpatialGaussianSmoothing.strFwhm                          = num2str(sprintf('%.2f', parametersSpatialGaussianSmoothing.fwhm));
parametersSpatialGaussianSmoothing.strSmoothingKernel               = sprintf('%s%s', parametersSpatialGaussianSmoothing.strFwhm, parametersSpatialGaussianSmoothing.strUnit);
parametersSpatialGaussianSmoothing.strSpatialSmoothingParameters    = [parametersSpatialGaussianSmoothing.strSpatialSmoothingMethod, parametersSpatialGaussianSmoothing.strFwhm, parametersSpatialGaussianSmoothing.strUnit];


end