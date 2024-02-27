function folderDefinition = folderDefinitionATWM1_MDD()

global iStudy
global iDataSource

if isempty(iDataSource)
    iDataSource = 1;
end

folderDefinition.iDirectory                             = ':';
folderDefinition.iDirectorySeparator                    = '\';
folderDefinition.strLocal                               = 'Local';
folderDefinition.strServer                              = 'Server';

folderDefinition.strTestConfig                          = 'zzzTEST';

folderDefinition.strArchive                             = 'Archive';

folderDefinition.dataDirectoryLocal                     = 'D:\Daten\';      % Local data directory
folderDefinition.dataDirectoryServerPsych               = 'W:\';            % Windows network drive for Psychiatry folder on server
folderDefinition.dataDirectoryServer                    = 'X:\';            % Windows network drive for project folder on server
folderDefinition.dataDirectoryServerCommon              = 'Y:\';            % Windows network drive for common folder on server


folderDefinition.indexDataDirectoryLocal                = 1;   
folderDefinition.indexDataDirectorySever                = 2;
folderDefinition.indexDataSource                        = iDataSource;

folderDefinition.dataDirectoryArray                     = {
                                                            folderDefinition.dataDirectoryLocal
                                                            folderDefinition.dataDirectoryServer
                                                            };
folderDefinition.dataDirectorySeverArray                = {
                                                            folderDefinition.dataDirectoryServer
                                                            folderDefinition.dataDirectoryServerCommon
                                                            };
folderDefinition.dataDirectory                          = folderDefinition.dataDirectoryArray{iDataSource};

%%% Local subfolders
folderDefinition.study                                  = strcat(folderDefinition.dataDirectory, iStudy, '\');
folderDefinition.archiveDICOMfiles                      = strcat(folderDefinition.dataDirectory, iStudy, '\Archive_DICOM_Files\');
folderDefinition.matlab                                 = strcat(folderDefinition.dataDirectory, iStudy, '\Matlab\');
folderDefinition.studyParameters                        = strcat(folderDefinition.dataDirectory, iStudy, '\Study_Parameters\');
folderDefinition.logfiles                               = strcat(folderDefinition.dataDirectory, iStudy, '\Presentation_Logfiles\');
folderDefinition.subjectCodes                           = strcat(folderDefinition.dataDirectory, iStudy, '\Subject_Codes\');
folderDefinition.barcodes                               = strcat(folderDefinition.dataDirectory, iStudy, '\Barcodes\');
folderDefinition.behavioralData                         = strcat(folderDefinition.dataDirectory, iStudy, '\Behavioral_Data\');
folderDefinition.presentationFiles                      = strcat(folderDefinition.dataDirectory, iStudy, '\Presentation\');
folderDefinition.singleSubjectData                      = strcat(folderDefinition.dataDirectory, iStudy, '\Single_Subject_Data\');
folderDefinition.multiSubjectData                       = strcat(folderDefinition.dataDirectory, iStudy, '\Multi_Subject_Data\');
folderDefinition.parametersMriScan                      = strcat(folderDefinition.dataDirectory, iStudy, '\Parameters_MRI_Scan\');
folderDefinition.motionCorrection                       = strcat(folderDefinition.dataDirectory, iStudy, '\Motion_Correction\');
folderDefinition.transferNIFTIfiles                     = strcat(folderDefinition.dataDirectory, iStudy, '\Transfer_NIFTI_Files\');
folderDefinition.plugins                                = strcat(folderDefinition.dataDirectory, iStudy, '\Plugins\');
folderDefinition.autoIt                                 = strcat(folderDefinition.dataDirectory, iStudy, '\AutoIT\');
folderDefinition.cortexBasedAlignment                   = strcat(folderDefinition.dataDirectory, iStudy, '\CBA\');
folderDefinition.gcm                                    = strcat(folderDefinition.dataDirectory, iStudy, '\GCM\');
folderDefinition.templates                              = strcat(folderDefinition.dataDirectory, iStudy, '\Templates\');
folderDefinition.barcodeGenerator                       = strcat(folderDefinition.dataDirectory, iStudy, '\Templates\BarcodeGenerator\');
folderDefinition.miktex                                 = strcat(folderDefinition.dataDirectory, iStudy, '\Templates\MiKTeXPortable\miktex\bin\');


folderDefinition.singleSubjectDataTestConfig            = strcat(folderDefinition.singleSubjectData, folderDefinition.strTestConfig, '\');

%%% Folders for newly created files
folderDefinition.presentationScenarioFiles              = strcat(folderDefinition.presentationFiles, 'PresentationFiles_Subjects\');
folderDefinition.niftiFilesMegCoreg                     = strcat(folderDefinition.transferNIFTIfiles, 'MEG_COREG\');

%%% Anonymised Archive for data passed on to participants
folderDefinition.strAnonymisedData                      = sprintf('Anonymised');
folderDefinition.strHighResAnatomy                      = sprintf('HIGH_RES_MPRAGE');
folderDefinition.strAnonymisedDataArchiveHighResAnatomy = sprintf('___%s_%s_%s', folderDefinition.strAnonymisedData, folderDefinition.strArchive, folderDefinition.strHighResAnatomy);
folderDefinition.anonymisedDataArchiveHighResAnatomy    = strcat(folderDefinition.archiveDICOMfiles, folderDefinition.strAnonymisedDataArchiveHighResAnatomy, '\');

%%% Beoserv folder for file transfer from scanner
folderDefinition.strFolderDicomFileTransferFromScanner  = '02_DICOM_Files';
folderDefinition.dicomFileTransferFromScanner           = strcat(folderDefinition.dataDirectoryServerPsych, folderDefinition.strFolderDicomFileTransferFromScanner, '\');

%%% Backup folder
folderDefinition.subjectArrayBackup                     = strcat(folderDefinition.studyParameters, 'aSubject_Backup\');
folderDefinition.subjectInformationBackup               = strcat(folderDefinition.dataDirectory, iStudy, '\Backup\');


end
