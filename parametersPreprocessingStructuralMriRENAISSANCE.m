function parametersPreprocessingStructuralMri = parametersPreprocessingStructuralMriATWM1()

parametersPreprocessingStructuralMri = sprintf('This parameter file - %s - is obsolete!', mfilename)
%{
parametersPreprocessingStructuralMri.strIntensityInhomogeneityCorrection        = 'IIHC';
parametersPreprocessingStructuralMri.strManualIntensityInhomogeneityCorrection  = 'mIIHC';
parametersPreprocessingStructuralMri.strBrainPeeling                            = 'BRAIN';
parametersPreprocessingStructuralMri.strTalairachTransformation                 = 'TAL';
%}

end