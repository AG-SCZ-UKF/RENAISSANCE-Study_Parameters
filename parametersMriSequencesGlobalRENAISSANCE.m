function parametersMriSequencesGlobal = parametersMriSequencesGlobalATWM1()


parametersMriSequencesGlobal.strFileType      = 'DICOM'; 
parametersMriSequencesGlobal.strSequence      = 'MPRAGE';
parametersMriSequencesGlobal.nSlices          = 192;
parametersMriSequencesGlobal.isLittleEndian   = false; 
parametersMriSequencesGlobal.xSize            = 256;
parametersMriSequencesGlobal.ySize            = 256;
parametersMriSequencesGlobal.nBytes           = 2;

parametersMriSequencesGlobal.bIsoVoxel        = true; 

parametersMriSequencesGlobal.strResolution    = 'HIGH_RES'; 
parametersMriSequencesGlobal.strProjectType   = 'vmr';

parametersMriSequencesGlobal.nTotalRuns       = 1;


end