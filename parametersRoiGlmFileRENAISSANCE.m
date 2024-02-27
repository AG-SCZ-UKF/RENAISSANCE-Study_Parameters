function parametersRoiGlmFile = parametersRoiGlmFileATWM1()

parametersRoiGlmFile.extRoiGlmResultFiles               = '.html';
parametersRoiGlmFile.wirdcardFilterPoiGlmResultFiles    = sprintf('*%s', parametersRoiGlmFile.extRoiGlmResultFiles);

parametersRoiGlmFile.strRoiAnalysis                     = 'ROI';
parametersRoiGlmFile.strTaskPhase                       = 'TP';
parametersRoiGlmFile.strCorrelation                     = 'CORR';
parametersRoiGlmFile.strVoxelwiseThreshold              = 'voxelwise_p=';

parametersRoiGlmFile.strSingleSubjectDataPart1          = 'Predictor';
parametersRoiGlmFile.strSingleSubjectDataPart2          = 'beta';

parametersRoiGlmFile.codeRFX                            = 'Random effects analysis of contrasts';
parametersRoiGlmFile.strCorrectionForSerialCorr         = 'After correction of serial correlations using AR(2) model:';
parametersRoiGlmFile.strContrasts                       = 'Contrast / LF';
parametersRoiGlmFile.codeGroupGLM                       = '<tr bgcolor="#cccccc"><td align="right"><b>';
parametersRoiGlmFile.codeStartBetaValue                 = '</b></td><td>';
parametersRoiGlmFile.codeEndBetaValue                   = '</td><td>'

parametersRoiGlmFile.codeEndContastData                 = '</td></tr>';



end

