function parametersStructuralMriSequenceLowRes = parametersStructuralMriSequenceLowResATWM1()
parametersStructuralMriSequenceLowRes.strFileType       = 'DICOM'; 
parametersStructuralMriSequenceLowRes.strSequence       = 'MPRAGE';
parametersStructuralMriSequenceLowRes.nSlices           = 96;
parametersStructuralMriSequenceLowRes.isLittleEndian 	= false; 
parametersStructuralMriSequenceLowRes.xSize             = 128;
parametersStructuralMriSequenceLowRes.ySize 			= 128;
parametersStructuralMriSequenceLowRes.nBytes 			= 2;

parametersStructuralMriSequenceLowRes.bIsoVoxel         = false; 

parametersStructuralMriSequenceLowRes.strResolution     = 'LOW_RES'; 
parametersStructuralMriSequenceLowRes.strProjectType    = 'vmr';

parametersStructuralMriSequenceLowRes.nTotalRuns        = 1;


end