function parametersFileTransfer = parametersFileTransferATWM1

% Standard settings for file transfer
parametersFileTransfer.bUseStandardDicomFileTransferFolder          = true;
parametersFileTransfer.bUseStandardLogfileTransferFolder            = true;
parametersFileTransfer.bArchiveFilesOnServer                        = false;
parametersFileTransfer.bOverwriteExistingFiles                      = true;
parametersFileTransfer.bArchiveAnonymisedHighResAnatomySeparately   = true;
parametersFileTransfer.bCreateProjectFiles                          = false;
parametersFileTransfer.bCompleteTransferBeforeProjectFileCreation   = true;


parametersFileTransfer.aBoolFileTransferSettings = {
                                                    parametersFileTransfer.bUseStandardDicomFileTransferFolder
                                                    parametersFileTransfer.bUseStandardLogfileTransferFolder
                                                    parametersFileTransfer.bOverwriteExistingFiles
                                                    parametersFileTransfer.bArchiveFilesOnServer
                                                    parametersFileTransfer.bCreateProjectFiles
                                                    parametersFileTransfer.bArchiveAnonymisedHighResAnatomySeparately
                                                    parametersFileTransfer.bCompleteTransferBeforeProjectFileCreation
                                                    };
                                                
parametersFileTransfer.aStrBoolFileTransferSettings = {
                                                    'Use standard DICOM file transfer folder'
                                                    'Use standard Presentation logfile transfer folder'
                                                    'Overwrite existing files'
                                                    'Archive files on server'
                                                    'Create project files'
                                                    'Archive anonymised HighResAnatomy separately'
                                                    'Complete file transfer before project file creation'
                                                     };

parametersFileTransfer.nrOfFileTransferSettings = size(parametersFileTransfer.aBoolFileTransferSettings);
parametersFileTransfer.nrOfFileTransferSettings = parametersFileTransfer.nrOfFileTransferSettings;


% 
parametersFileTransfer.strLocalAchiveFolder = 'local subject archive folder'; 
parametersFileTransfer.strServerAchiveFolder= 'server subject archive folder'; 

parametersFileTransfer.strLocalLogfilesFolder = 'local logfiles folder';




% Other parameters
parametersFileTransfer.strZipFolder    = 'zipFolder';
parametersFileTransfer.strTempFolder   = 'tempFolder';

parametersFileTransfer.strSimScannerFolder   = 'Data_on_Scanner';
parametersFileTransfer.strScannerRootFolder   = 'Transfer_from_Scanner';

parametersFileTransfer.nDicomFilesForSubjectIdentityConfirmation 	= 3;

parametersFileTransfer.transferProgressFraction                     = 0.10;

parametersFileTransfer.maximumTimeDifferenceOfFileDatesAllowed      = 1; %%% 1 = 24 hours
parametersFileTransfer.maximumTimeDifferenceOfFileDatesAllowed      = 200; %%% 1 = 24 hours
parametersFileTransfer.message     = 'Change value back to 1 or smaller'; %%% 1 = 24 hours

parametersFileTransfer.fTimeIntervalDicomFileCountStandard = 0.5;
parametersFileTransfer.fTimeIntervalDicomFileCountFast     = 0.1;
parametersFileTransfer.nIntervalsToCheck = 20;


%%% Only used for simulation purposes
parametersFileTransfer.delaySingleFileTransfer = 0;
parametersFileTransfer.delayNextPartialTransfer = parametersFileTransfer.nIntervalsToCheck * parametersFileTransfer.fTimeIntervalDicomFileCountStandard * 3;


parametersFileTransfer.iFilesToCopy = [
01 29
30 59
60 99
];

parametersFileTransfer.iFilesToCopy = [
                                            1   212
                                            213 302
                                            303 511
                                            512 687
                                            688 896];

%{                                        
parametersDicomFileTransfer.iFilesToCopy = [
                                            1 1
                                            2 2
                                            %6 9
                                            ];                                        
                                            %}
end