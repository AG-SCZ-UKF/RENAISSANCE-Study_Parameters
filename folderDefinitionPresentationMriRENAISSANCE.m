function folderDefinition = folderDefinitionPresentationMriATWM1(folderDefinition)

global iStudy

folderDefinition.iServerMriScanner              = 'ServerMriScanner';
folderDefinition.iDirectory                     = ':';


folderDefinition.dataDirectoryLocalMriScanner   = 'D:\presentation\Bittner\';            % project folder on presentation PC at MRI scanner
folderDefinition.dataDirectoryServerMriScanner  = '\\192.168.161.240\projects\';            % project server directory for presentation PC at MRI scanner

% Definitions for presentation PC at MRI scanner
folderDefinition.dataAcquisition                    = strcat(folderDefinition.dataDirectoryLocalMriScanner, iStudy, '\Data_Acquisition\');
folderDefinition.presentationScenarioFiles          = strcat(folderDefinition.dataDirectoryLocalMriScanner, iStudy, '\Scenario_Files\');
folderDefinition.logfilesLocalMriScanner            = strcat(folderDefinition.dataDirectoryLocalMriScanner, iStudy, '\Logfiles\'); 
folderDefinition.matlabLocalMriScanner              = strcat(folderDefinition.dataDirectoryLocalMriScanner, '\1_Scripting\', iStudy, '\Matlab\');                       % general matlab scripts
folderDefinition.exclusiveMatlabLocalMriScanner     = strcat(folderDefinition.dataDirectoryLocalMriScanner, '\1_Scripting\', iStudy, '\Matlab_Presentation_PC_MRI\');   % matlab scripts only used on Presentation PC
folderDefinition.studyParametersLocalMriScanner     = strcat(folderDefinition.dataDirectoryLocalMriScanner, '\1_Scripting\', iStudy, '\Study_Parameters\'); 

% Definition for server folders on presentation PC at MRI scanner
%folderDefinition.logfilesServerMriScanner                   = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Logfiles\'); 
folderDefinition.logfilesServerMriScanner                   = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Presentation_Logfiles\');
folderDefinition.matlabServerMriScanner                     = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Matlab\'); 
folderDefinition.studyParametersServerMriScanner            = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Study_Parameters\'); 
folderDefinition.presentationScenarioFilesServerMriScanner  = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Presentation\PresentationFiles_Subjects\');
folderDefinition.parametersMriScanServerMriScanner          = strcat(folderDefinition.dataDirectoryServerMriScanner, iStudy, '\Parameters_MRI_Scan\');


end