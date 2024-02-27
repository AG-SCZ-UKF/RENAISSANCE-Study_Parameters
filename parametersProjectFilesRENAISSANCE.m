function parametersProjectFiles = parametersProjectFilesATWM1()

parametersProjectFiles.bTransferDicomFilesFirst = false;

%%% Structural
parametersProjectFiles.strStructuralProject     = 'vmr';
parametersProjectFiles.extStructuralProject     = sprintf('.%s', parametersProjectFiles.strStructuralProject);

parametersProjectFiles.strStructuralProjectV16  = 'v16';
parametersProjectFiles.extStructuralProjectV16  = sprintf('.%s', parametersProjectFiles.strStructuralProjectV16);

%%% Functional
parametersProjectFiles.strFunctionalProject     = 'fmr';
parametersProjectFiles.extFunctionalProject     = sprintf('.%s', parametersProjectFiles.strFunctionalProject);

parametersProjectFiles.strFirstVolume           = 'firstvol';

parametersProjectFiles.indexFmr                 = 1;
parametersProjectFiles.indexFirstVolFmr         = 2;


%%% Position files for functional and structural projects
parametersProjectFiles.strPositionFile          = 'pos';
parametersProjectFiles.extPositionFile          = sprintf('.%s', parametersProjectFiles.strPositionFile);

%%% Files for statistical analysis
parametersProjectFiles.strProtocolFile              = 'prt';
parametersProjectFiles.extProtocolFile              = sprintf('.%s', parametersProjectFiles.strProtocolFile);

parametersProjectFiles.strSingleStudyDesignMatrixFile   = 'sdm';
parametersProjectFiles.extSingleStudyDesignMatrixFile   = sprintf('.%s', parametersProjectFiles.strSingleStudyDesignMatrixFile);

parametersProjectFiles.strMultiStudyDesignMatrixFile    = 'mdm';
parametersProjectFiles.extMultiStudyDesignMatrixFile    = sprintf('.%s', parametersProjectFiles.strMultiStudyDesignMatrixFile);

parametersProjectFiles.strGlmFile               = 'glm';
parametersProjectFiles.extGlmFile               = sprintf('.%s', parametersProjectFiles.strGlmFile);



%%% Volume & mesh time course
parametersProjectFiles.strVolumeTimeCourse      = 'vtc';
parametersProjectFiles.extVolumeTimeCourse      = sprintf('.%s', parametersProjectFiles.strVolumeTimeCourse);

parametersProjectFiles.strMeshTimeCourse        = 'mtc';
parametersProjectFiles.extMeshTimeCourse        = sprintf('.%s', parametersProjectFiles.strMeshTimeCourse);

%%% Coregistration, ACPC-Transformation and TAL-Transformation
parametersProjectFiles.strTransformationFile    = 'trf';
parametersProjectFiles.extTransformationFile    = sprintf('.%s', parametersProjectFiles.strTransformationFile);

parametersProjectFiles.strTalFile               = 'tal';
parametersProjectFiles.extTalFile               = sprintf('.%s', parametersProjectFiles.strTalFile);


%%% Surface mesh files
parametersProjectFiles.strSurfaceMesh           = 'srf';
parametersProjectFiles.extSurfaceMesh           = sprintf('.%s', parametersProjectFiles.strSurfaceMesh);


%%% Sphere to sphere mapping
parametersProjectFiles.strSphereToSphereMapping = 'ssm';
parametersProjectFiles.extSphereToSphereMapping = sprintf('.%s', parametersProjectFiles.strSphereToSphereMapping);


%%% Surface map
parametersProjectFiles.strSurfaceMap            = 'smp';
parametersProjectFiles.extSurfaceMap            = sprintf('.%s', parametersProjectFiles.strSurfaceMap);



parametersProjectFiles.strMap                   = 'map';
parametersProjectFiles.extMap                   = sprintf('.%s', parametersProjectFiles.strMap);


%%% Granger causality mapping specification
parametersProjectFiles.strGcmspec               = 'gcmspec';
parametersProjectFiles.extGcmspec               = sprintf('.%s', parametersProjectFiles.strGcmspec);


%%% Event-related averaging
parametersProjectFiles.strAvg                   = 'avg';
parametersProjectFiles.extAvg                   = sprintf('.%s', parametersProjectFiles.strAvg);


%%% Data files
parametersProjectFiles.strDat                   = 'dat';
parametersProjectFiles.extDat                   = sprintf('.%s', parametersProjectFiles.strDat);


%%% Poi files
parametersProjectFiles.strPoi                   = 'poi';
parametersProjectFiles.extPoi                   = sprintf('.%s', parametersProjectFiles.strPoi);


%%% Nifti
parametersProjectFiles.strNiftiFile             = 'nii';
parametersProjectFiles.extNiftiFile             = sprintf('.%s', parametersProjectFiles.strNiftiFile);

parametersProjectFiles.strUntitledFiles         = 'untitled';


end




