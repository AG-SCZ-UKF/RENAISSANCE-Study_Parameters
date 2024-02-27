function parametersGlm = parametersGlmSingleSubjectVtcBasedATWM1()

global iStudy

parametersProjectFiles              = eval(['parametersProjectFiles', iStudy]);

parametersGlm.mdmFileVersion                = 3;
parametersGlm.strFixedEffects               = 'FFX';
parametersGlm.strRandomEffects              = 'RFX';
parametersGlm.strPscTransformation          = 'PT';
parametersGlm.strZTransformation            = 'ZT';
parametersGlm.strCorrectSerialCorrelations  = 'AR-2';
parametersGlm.intensityThreshold            = 100;
parametersGlm.strIntensityThreshold         = sprintf('ITHR-%i', parametersGlm.intensityThreshold);

parametersGlm.bMultipleSubjects             = false;
parametersGlm.bCreateRfxGlm                 = false;
parametersGlm.bCorrectSerialCorrelations    = true;
parametersGlm.bApplyPscTransformation       = true;
parametersGlm.bApplyZTransformation         = false;
parametersGlm.bSeparateRegressors           = false;
parametersGlm.bVolumeBasedGlm               = true;


if parametersGlm.bCorrectSerialCorrelations
    parametersGlm.strCorrectSerialCorrelations = sprintf('_%s', parametersGlm.strCorrectSerialCorrelations);
else
    parametersGlm.strCorrectSerialCorrelations = '';
end

if parametersGlm.bApplyPscTransformation
    parametersGlm.strTransformation = parametersGlm.strPscTransformation;
elseif parametersGlm.bApplyZTransformation
    parametersGlm.strTransformation = parametersGlm.strZTransformation;
end

if parametersGlm.bCreateRfxGlm
    parametersGlm.strAnalysis = parametersGlm.strRandomEffects;
else
    parametersGlm.strAnalysis = parametersGlm.strFixedEffects;
end

if parametersGlm.bVolumeBasedGlm
    parametersGlm.strTimeCourseData = upper(parametersProjectFiles.strVolumeTimeCourse);
else
    parametersGlm.strTimeCourseData = upper(parametersProjectFiles.strMeshTimeCourse);
end


end