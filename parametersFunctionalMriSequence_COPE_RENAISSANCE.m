function parametersFunctionalMriSequence_COPE = parametersFunctionalMriSequence_COPE_ATWM1 ()
%parametersFunctionalMriSequence_LOC = parametersFunctionalMriSequence_LOC_ATWM1();

parametersFunctionalMriSequence_COPE.strMethod        = 'COPE';
parametersFunctionalMriSequence_COPE.nMeasurements    = 1;

parametersFunctionalMriSequence_COPE.temporalRes      = 2000;     % measured in milliseconds

parametersFunctionalMriSequence_COPE.fileType         = 'DICOM'; 
parametersFunctionalMriSequence_COPE.nVolumes         = 3;
parametersFunctionalMriSequence_COPE.nVolumesToSkip   = 2;
parametersFunctionalMriSequence_COPE.nVolumesFmr      = parametersFunctionalMriSequence_COPE.nVolumes-parametersFunctionalMriSequence_COPE.nVolumesToSkip;
parametersFunctionalMriSequence_COPE.createAmr        = false;
parametersFunctionalMriSequence_COPE.nSlices          = 32;
parametersFunctionalMriSequence_COPE.prefixStc        = 'untitled';
parametersFunctionalMriSequence_COPE.swapBytes        = false;
parametersFunctionalMriSequence_COPE.mosaicResX       = 384;
parametersFunctionalMriSequence_COPE.mosaicResY       = 384;
parametersFunctionalMriSequence_COPE.nBytes           = 2;
parametersFunctionalMriSequence_COPE.nVolumesInImage  = 1;
parametersFunctionalMriSequence_COPE.resX             = 64;
parametersFunctionalMriSequence_COPE.resY             = 64;
parametersFunctionalMriSequence_COPE.scanOrder        = 10;       %0 = Ascending, 1 = Asc-Interleaved, 2 = Asc-Int2, 10 = Descending, 11 = Desc-Int, 12 = Desc-Int2
parametersFunctionalMriSequence_COPE.voxelSize        = 3;        % voxel Size for isotropic resolution in mm^3

parametersFunctionalMriSequence_COPE.durationFull     = parametersFunctionalMriSequence_COPE.temporalRes * parametersFunctionalMriSequence_COPE.nVolumes;
parametersFunctionalMriSequence_COPE.durationSkip     = parametersFunctionalMriSequence_COPE.temporalRes * parametersFunctionalMriSequence_COPE.nVolumesToSkip;
parametersFunctionalMriSequence_COPE.duration         = parametersFunctionalMriSequence_COPE.durationFull - parametersFunctionalMriSequence_COPE.durationSkip;

parametersFunctionalMriSequence_COPE.phaseBlipsPolarity     = -1;

parametersFunctionalMriSequence_COPE.bCreateFirstVol        = false;
%parametersFunctionalMriSequence_COPE.nVolumesFirstVol       = 1;
%parametersFunctionalMriSequence_COPE.nVolumesToSkipFirstVol = 0;


end

