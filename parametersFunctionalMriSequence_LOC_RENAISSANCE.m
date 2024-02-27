function parametersFunctionalMriSequence_LOC = parametersFunctionalMriSequence_LOC_ATWM1()

parametersFunctionalMriSequence_LOC.temporalRes             = 2000;     % measured in milliseconds

parametersFunctionalMriSequence_LOC.fileType                = 'DICOM'; 
parametersFunctionalMriSequence_LOC.nVolumes                = 170;
parametersFunctionalMriSequence_LOC.nVolumesToSkip          = 4;
parametersFunctionalMriSequence_LOC.nVolumesFmr             = parametersFunctionalMriSequence_LOC.nVolumes-parametersFunctionalMriSequence_LOC.nVolumesToSkip;
parametersFunctionalMriSequence_LOC.createAmr               = false;    % This also creates a fmr from the first volume, but that leads to a crash!
parametersFunctionalMriSequence_LOC.nSlices                 = 32;
parametersFunctionalMriSequence_LOC.prefixStc               = 'untitled';
parametersFunctionalMriSequence_LOC.swapBytes               = false;
parametersFunctionalMriSequence_LOC.mosaicResX              = 384;
parametersFunctionalMriSequence_LOC.mosaicResY              = 384;
parametersFunctionalMriSequence_LOC.nBytes                  = 2;
parametersFunctionalMriSequence_LOC.nVolumesInImage         = 1;
parametersFunctionalMriSequence_LOC.resX                    = 64;
parametersFunctionalMriSequence_LOC.resY                    = 64;
parametersFunctionalMriSequence_LOC.scanOrder               = 10;       %0 = Ascending, 1 = Asc-Interleaved, 2 = Asc-Int2, 10 = Descending, 11 = Desc-Int, 12 = Desc-Int2
parametersFunctionalMriSequence_LOC.voxelSize               = 3;        % voxel Size for isotropic resolution in mm^3

parametersFunctionalMriSequence_LOC.durationFull            = parametersFunctionalMriSequence_LOC.temporalRes * parametersFunctionalMriSequence_LOC.nVolumes;
parametersFunctionalMriSequence_LOC.durationSkip            = parametersFunctionalMriSequence_LOC.temporalRes * parametersFunctionalMriSequence_LOC.nVolumesToSkip;
parametersFunctionalMriSequence_LOC.duration                = parametersFunctionalMriSequence_LOC.durationFull - parametersFunctionalMriSequence_LOC.durationSkip;

parametersFunctionalMriSequence_LOC.phaseBlipsPolarity      = 1;

parametersFunctionalMriSequence_LOC.bCreateFirstVol         = true;
parametersFunctionalMriSequence_LOC.nVolumesFirstVol        = 1;
parametersFunctionalMriSequence_LOC.nVolumesToSkipFirstVol  = 0;


end