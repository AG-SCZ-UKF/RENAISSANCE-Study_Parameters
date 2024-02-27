function parametersDataSubFolders = parametersDataSubFoldersATWM1()

global iStudy
global iSession
global nrOfSessions

if isempty(nrOfSessions)
    nrOfSessions = 1;
end

parametersStudy                         = eval(['parametersStudy', iStudy]);
parametersDicomFiles                    = eval(['parametersDicomFiles', iStudy]);
parametersParadigm_WM_MRI               = eval(['parametersParadigm_WM_MRI_', iStudy]);
parametersParadigm_LOC_MRI              = eval(['parametersParadigm_LOC_MRI_', iStudy]);
parametersStructuralMriSequenceHighRes  = eval(['parametersStructuralMriSequenceHighRes', iStudy]);
parametersStructuralMriSequenceLowRes   = eval(['parametersStructuralMriSequenceLowRes', iStudy]);
parametersBrainSegmentation             = eval(['parametersBrainSegmentation', iStudy]);


%%% This string can be used to search for valid data subfolders and
%%% structures containing sub-subfolders among the other fields of 
%%% parametersDataSubFolder
parametersDataSubFolders.strValidDataSubFolder          = 'strFolder';
%parametersDataSubFolders.strValidStructDataSubFolder    = 'structSubFolder';
parametersDataSubFolders.strValidStructDataSubSubFolder = 'structSubSubFolder';


%%%


counterFolder = 0;
parametersDataSubFolders.aStrDataSubFolder = {};

%%% Define folders for WM paradigm
for cr = 1:parametersParadigm_WM_MRI.nConditions
    counterFolder = counterFolder + 1;
    strSubFolderFieldname = sprintf('aStrFolder_%s', parametersStudy.strWorkingMemoryTask);
    parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)){cr} = sprintf('%02i_%s_%s_%i', counterFolder, parametersStudy.strWorkingMemoryTask, parametersStudy.strRun, cr);
    parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)){cr}];
end

%%% Define folder for EPI-distortion correction of WM paradigm
for cr = 1:parametersParadigm_WM_MRI.nConditions
    counterFolder = counterFolder + 1;
    strSubFolderFieldname = sprintf('aStrFolder_%s_%s', parametersStudy.strMethodEpiDistortionCorrection, parametersStudy.strWorkingMemoryTask);
    parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)){cr} = sprintf('%02i_%s_%s_%s_%i', counterFolder, parametersStudy.strMethodEpiDistortionCorrection, parametersStudy.strWorkingMemoryTask, parametersStudy.strRun, cr);
    parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)){cr}];
end

%%% Define folder for Localizer paradigm
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strLocalizerTask);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s', counterFolder, parametersStudy.strLocalizerTask);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for EPI-distortion correction of Localizer paradigm
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strMethodEpiDistortionCorrection, parametersStudy.strLocalizerTask);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s', counterFolder, parametersStudy.strMethodEpiDistortionCorrection, parametersStudy.strLocalizerTask);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for high res anatomy
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s', counterFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for low res anatomy
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStructuralMriSequenceLowRes.strSequence, parametersStructuralMriSequenceLowRes.strResolution);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s', counterFolder, parametersStructuralMriSequenceLowRes.strSequence, parametersStructuralMriSequenceLowRes.strResolution);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for anatomy used for MEG coregistration
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStudy.strMEG, parametersStudy.strMethodCoregistration);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s_%s', counterFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStudy.strMEG, parametersStudy.strMethodCoregistration);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];


%%% Define folders specific for session 1
cses = 1;

%%% Define folder for storage of DICOM files for session 1
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_session_%i', parametersDataSubFolders.strValidDataSubFolder, parametersDicomFiles.strDicomFormat, cses);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_session_%i', counterFolder, parametersDicomFiles.strDicomFormat, cses);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for logfiles and parameter files session 1
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_session_%i', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strLogfiles, cses);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_session_%i', counterFolder, parametersStudy.strLogfiles, cses);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];


%%% Define folder for files required for statistical analysis of WM
%%% paradigm
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strAnalysis, parametersStudy.strWorkingMemoryTask);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s', counterFolder, parametersStudy.strAnalysis, parametersStudy.strWorkingMemoryTask);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folder for files required for statistical analysis of LOC
%%% paradigm
counterFolder = counterFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strAnalysis, parametersStudy.strLocalizerTask);
parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s', counterFolder, parametersStudy.strAnalysis, parametersStudy.strLocalizerTask);
parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];

%%% Define folders specific for additional sessions
if nrOfSessions > 1
    for cses = 2:nrOfSessions
        %%% Define folder for storage of DICOM files
        counterFolder = counterFolder + 1;
        strSubFolderFieldname = sprintf('%s_%s_session_%i', parametersDataSubFolders.strValidDataSubFolder, parametersDicomFiles.strDicomFormat, cses);
        parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_session_%i', counterFolder, parametersDicomFiles.strDicomFormat, cses);
        parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];
        
        %%% Define folder for logfiles and parameter files
        counterFolder = counterFolder + 1;
        strSubFolderFieldname = sprintf('%s_%s_session_%i', parametersDataSubFolders.strValidDataSubFolder, parametersStudy.strLogfiles, cses);
        parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_session_%i', counterFolder, parametersStudy.strLogfiles, cses);
        parametersDataSubFolders.aStrDataSubFolder = [parametersDataSubFolders.aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(strSubFolderFieldname))];
    end
end

parametersDataSubFolders.nDataSubFolder = numel(parametersDataSubFolders.aStrDataSubFolder);


%%% Define sub-subfolders
parametersDataSubFolders.aStrStructDataSubSubFolder = {};

%%% Define subfolders for high res anatomy subfolder
counterSubFolder = 0;

%%% Create structure containing information about all sub-subfolders
structSubFolderFieldname = sprintf('%s_%s_%s', parametersDataSubFolders.strValidStructDataSubSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution);
parametersDataSubFolders.aStrStructDataSubSubFolder = [parametersDataSubFolders.aStrStructDataSubSubFolder, structSubFolderFieldname];

%%% Define parent folder of sub-subfolders
parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).strParentFolder = sprintf('%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution);

%%% Create array containing fielnames pointing to all sub-subfolders
parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).aStrDataSubFolder = {};

%%% Define sub-subfolder for brain segmentation
counterSubFolder = counterSubFolder + 1;
strSubFolderFieldname = sprintf('%s_%s_%s_%s', parametersDataSubFolders.strValidDataSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution, parametersBrainSegmentation.strSegmentation);
parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).(matlab.lang.makeValidName(strSubFolderFieldname)) = sprintf('%02i_%s_%s_%s', counterSubFolder, parametersStructuralMriSequenceHighRes.strSequence, parametersStructuralMriSequenceHighRes.strResolution, parametersBrainSegmentation.strSegmentation);
parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).aStrDataSubFolder = [parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).aStrDataSubFolder, parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).(matlab.lang.makeValidName(strSubFolderFieldname))];


parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).nDataSubSubFolder = numel(parametersDataSubFolders.(matlab.lang.makeValidName(structSubFolderFieldname)).aStrDataSubFolder);

parametersDataSubFolders.nStructDataSubSubFolder = numel(parametersDataSubFolders.aStrStructDataSubSubFolder);

%%% Define subfolder for incomplete session
counterFolder = counterFolder + 1;
counterIncompleteSessionFolder = ceil((counterFolder + 20) * 0.1) * 10;


end