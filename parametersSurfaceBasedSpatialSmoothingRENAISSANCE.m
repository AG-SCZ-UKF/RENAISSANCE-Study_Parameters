function parametersSurfaceBasedSpatialSmoothing = parametersSurfaceBasedSpatialSmoothingATWM1()

parametersSurfaceBasedSpatialSmoothing.repeatValue                  = 8; 
parametersSurfaceBasedSpatialSmoothing.indexSpatialSmoothingMethod  = 'MSS';
parametersSurfaceBasedSpatialSmoothing.indexRepeatValue             = num2str(sprintf('%i', parametersSurfaceBasedSpatialSmoothing.repeatValue));
parametersSurfaceBasedSpatialSmoothing.indexSpatialSmoothing        = sprintf('%s-%s', parametersSurfaceBasedSpatialSmoothing.indexSpatialSmoothingMethod, parametersSurfaceBasedSpatialSmoothing.indexRepeatValue);


end