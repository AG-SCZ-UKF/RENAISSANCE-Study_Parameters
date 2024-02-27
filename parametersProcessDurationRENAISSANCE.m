function parametersProcessDuration = parametersProcessDurationATWM1()

parametersProcessDuration.factorMaximumDelay = 3;

parametersProcessDuration.delayBeforeUpdate = 1; % delay [seconds] before next update during function delayedTerminationOfMatlabCommandWindows

%%% File creation
parametersProcessDuration.vmrFileCreation = 5;
parametersProcessDuration.fmrFileCreation = 15;
parametersProcessDuration.vtcFileCreation = 1600;
parametersProcessDuration.prtFileCreation = 15;
parametersProcessDuration.sdmFileCreation = 15;

parametersProcessDuration.renameDicomFiles = 5;

%%% FMR preprocessing
parametersProcessDuration.fmrSliceScanTimeCorrection    = 20;
parametersProcessDuration.fmrMotionCorrection           = 150;    %%% Change
parametersProcessDuration.fmrSpatialSmoothing           = 20;
parametersProcessDuration.fmrTemporalHighPassFiltering  = 20;

%%% FMR-VMR coregistration
parametersProcessDuration.fmrVmrCoregistrationUsingBbr  = 50;


end