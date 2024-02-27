function parametersStructuralMriSequenceHighRes = parametersStructuralMriSequenceHighResATWM1()
parametersStructuralMriSequenceHighRes.strFileType      = 'DICOM'; 
parametersStructuralMriSequenceHighRes.strSequence      = 'MPRAGE';
parametersStructuralMriSequenceHighRes.nSlices          = 192;
parametersStructuralMriSequenceHighRes.isLittleEndian   = false; 
parametersStructuralMriSequenceHighRes.xSize            = 256;
parametersStructuralMriSequenceHighRes.ySize            = 256;
parametersStructuralMriSequenceHighRes.nBytes           = 2;

parametersStructuralMriSequenceHighRes.bIsoVoxel        = true; 

parametersStructuralMriSequenceHighRes.strResolution    = 'HIGH_RES'; 
parametersStructuralMriSequenceHighRes.strProjectType   = 'vmr';

parametersStructuralMriSequenceHighRes.nTotalRuns       = 1;


end