function parametersPoiGlmFile = parametersPoiGlmFileATWM1()

parametersPoiGlmFile.extPoiGlmResultFiles               = '.html';
parametersPoiGlmFile.wirdcardFilterPoiGlmResultFiles    = sprintf('*%s', parametersPoiGlmFile.extPoiGlmResultFiles);

parametersPoiGlmFile.strPoiAnalysis                     = 'POI';
parametersPoiGlmFile.strTaskPhase                       = 'TP';
parametersPoiGlmFile.strCorrelation                     = 'CORR';
parametersPoiGlmFile.strVoxelwiseThreshold              = 'voxelwise_p=';

parametersPoiGlmFile.strSingleSubjectDataPart1          = 'Predictor';
parametersPoiGlmFile.strSingleSubjectDataPart2          = 'beta';

parametersPoiGlmFile.codeRFX                            = 'Random effects analysis of contrasts';
parametersPoiGlmFile.codeGroupGLM                       = '<tr bgcolor="#cccccc"><td align="right"><b>';
parametersPoiGlmFile.codeStartBetaValue                 = '</b></td><td>';
parametersPoiGlmFile.codeEndBetaValue                   = '</td></tr>';

end

