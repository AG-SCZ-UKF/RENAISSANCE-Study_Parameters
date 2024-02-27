function parametersSpatialSmoothingMtc = parametersSpatialSmoothingMtcATWM1
parametersSpatialSmoothingMtc.repeatValue                       = 1; 
parametersSpatialSmoothingMtc.strSpatialSmoothingMethod         = 'MSS';
parametersSpatialSmoothingMtc.strRepeatValue                    = num2str(sprintf('%i', parametersSpatialSmoothingMtc.repeatValue));
parametersSpatialSmoothingMtc.strSpatialSmoothing               = sprintf('%s-%s', parametersSpatialSmoothingMtc.strSpatialSmoothingMethod, parametersSpatialSmoothingMtc.strRepeatValue);


end