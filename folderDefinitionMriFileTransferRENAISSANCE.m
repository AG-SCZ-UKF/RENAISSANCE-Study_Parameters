function folderDefinition = folderDefinitionMriFileTransferATWM1(folderDefinition)

%global iStudy
%global iSubject

%%% Folder definitions for file transfer from scanner
%folderDefinition.strFolderDicomFileTransferFromScanner  = '02_DICOM_Files';
%folderDefinition.dicomFileTransferFromScanner           = strcat(folderDefinition.dataDirectoryServerPsych, folderDefinition.strFolderDicomFileTransferFromScanner, '\');


%{
folderDefinition.archiveZip                             = strcat(folderDefinition.dataDirectoryServer, 'Zip_Archive', '\');
folderDefinition.strFolderScanner                   = strcat(folderDefinition.dataDirectoryServer, parametersDicomFileTransfer.strSimScannerFolder, '\');
folderDefinition.strFolderRootTransferFromScanner   = strcat(folderDefinition.dataDirectoryServer, parametersDicomFileTransfer.strScannerRootFolder, '\');
%folderDefinition.strFolderTransferFromScanner       = strcat(folderDefinition.strFolderRootTransferFromScanner, 'Subject_TEST', '\');

%%% Change
folderDefinition.strFolderCurrentSubject        	= strcat(folderDefinition.dataDirectoryServer, iSubject, '\');
folderDefinition.strFolderCurrentSubjectZip         = strcat(folderDefinition.dataDirectoryServer, iSubject, '\', parametersDicomFileTransfer.strZipFolder, '\');
folderDefinition.strTempFolder                      = strcat(folderDefinition.dataDirectoryServer, iSubject, '\', parametersDicomFileTransfer.strTempFolder, '\');

folderDefinition.logFilesTransfer                   = strcat(folderDefinition.dataDirectoryServerCommon, iStudy, '_Logfiles_Transfer\');
%}

end