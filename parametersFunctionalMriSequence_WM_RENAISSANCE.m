function parametersFunctionalMriSequence_WM = parametersFunctionalMriSequence_WM_ATWM1()

parametersFunctionalMriSequence_WM.temporalRes              = 2000;     % measured in milliseconds

parametersFunctionalMriSequence_WM.fileType                 = 'DICOM'; 
parametersFunctionalMriSequence_WM.nVolumes                 = 225;
parametersFunctionalMriSequence_WM.nVolumesToSkip           = 4;
parametersFunctionalMriSequence_WM.nVolumesFmr              = parametersFunctionalMriSequence_WM.nVolumes - parametersFunctionalMriSequence_WM.nVolumesToSkip;
parametersFunctionalMriSequence_WM.createAmr                = false;    % This also creates a fmr from the first volume, but that leads to a crash!
parametersFunctionalMriSequence_WM.nSlices                  = 32;
parametersFunctionalMriSequence_WM.prefixStc                = 'untitled';
parametersFunctionalMriSequence_WM.swapBytes                = false;
parametersFunctionalMriSequence_WM.mosaicResX               = 384;
parametersFunctionalMriSequence_WM.mosaicResY               = 384;
parametersFunctionalMriSequence_WM.nBytes                   = 2;
parametersFunctionalMriSequence_WM.nVolumesInImage          = 1;
parametersFunctionalMriSequence_WM.resX                     = 64;
parametersFunctionalMriSequence_WM.resY                     = 64;
parametersFunctionalMriSequence_WM.scanOrder                = 10;       %0 = Ascending, 1 = Asc-Interleaved, 2 = Asc-Int2, 10 = Descending, 11 = Desc-Int, 12 = Desc-Int2
parametersFunctionalMriSequence_WM.voxelSize                = 3;        % voxel Size for isotropic resolution in mm^3

parametersFunctionalMriSequence_WM.durationFull             = parametersFunctionalMriSequence_WM.temporalRes * parametersFunctionalMriSequence_WM.nVolumes;
parametersFunctionalMriSequence_WM.durationSkip             = parametersFunctionalMriSequence_WM.temporalRes * parametersFunctionalMriSequence_WM.nVolumesToSkip;
parametersFunctionalMriSequence_WM.duration                 = parametersFunctionalMriSequence_WM.durationFull - parametersFunctionalMriSequence_WM.durationSkip;

parametersFunctionalMriSequence_WM.phaseBlipsPolarity       = 1;

parametersFunctionalMriSequence_WM.bCreateFirstVol          = true;
parametersFunctionalMriSequence_WM.nVolumesFirstVol         = 1;
parametersFunctionalMriSequence_WM.nVolumesToSkipFirstVol   = 0;

end