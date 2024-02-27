function parametersDicomFileTransfer = parametersDicomFileTransferATWM1


parametersDicomFileTransfer.strZipFolder    = 'zipFolder';
parametersDicomFileTransfer.strTempFolder   = 'tempFolder';

parametersDicomFileTransfer.strSimScannerFolder   = 'Data_on_Scanner';
parametersDicomFileTransfer.strScannerRootFolder   = 'Transfer_from_Scanner'

parametersDicomFileTransfer.nDicomFilesForSubjectIdentityConfirmation   = 3;


parametersDicomFileTransfer.maximumTimeDifferenceOfFileDatesAllowed     = 1; %%% 1 = 24 hours
parametersDicomFileTransfer.maximumTimeDifferenceOfFileDatesAllowed     = 200; %%% 1 = 24 hours
parametersDicomFileTransfer.message     = 'Change value back to 1 or smaller' %%% 1 = 24 hours

parametersDicomFileTransfer.fTimeIntervalDicomFileCountStandard = 0.5;
parametersDicomFileTransfer.fTimeIntervalDicomFileCountFast     = 0.1;
parametersDicomFileTransfer.nIntervalsToCheck = 20;


%%% Only used for simulation purposes
parametersDicomFileTransfer.delaySingleFileTransfer = 0;
parametersDicomFileTransfer.delayNextPartialTransfer = parametersDicomFileTransfer.nIntervalsToCheck * parametersDicomFileTransfer.fTimeIntervalDicomFileCountStandard * 3;


parametersDicomFileTransfer.iFilesToCopy = [
01 29
30 59
60 99
];

parametersDicomFileTransfer.iFilesToCopy = [
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