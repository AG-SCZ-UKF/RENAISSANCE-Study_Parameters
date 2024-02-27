function parametersBrainNormalisationAndSegmentation = parametersBrainNormalisationAndSegmentationATWM1()

parametersBrainNormalisationAndSegmentation.strInhomogeneityCorrection          = 'IIHC'; 
parametersBrainNormalisationAndSegmentation.strManualInhomogeneityCorrection    = 'mIIHC';    %%% This has to be entered manually during inhomogeneity correction
parametersBrainNormalisationAndSegmentation.strBrainExtraction                  = 'BRAIN';    %%% This has to be entered manually after inhomogeneity correction

parametersBrainNormalisationAndSegmentation.strAcpcTransformation               = 'ACPC';    
parametersBrainNormalisationAndSegmentation.strTalairachTransformation          = 'TAL';    

end