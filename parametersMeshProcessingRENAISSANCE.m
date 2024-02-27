function parametersMeshProcessing = parametersMeshProcessingATWM1()

%%% Parameters for mesh reconstruction
parametersMeshProcessing.strMeshReconstruction  = 'RECO';
parametersMeshProcessing.strMeshSmoothing       = 'SM';

parametersMeshProcessing.strUnsmoothedMesh      = parametersMeshProcessing.strMeshReconstruction;
parametersMeshProcessing.strSmoothedMesh        = strcat(parametersMeshProcessing.strMeshReconstruction, parametersMeshProcessing.strMeshSmoothing);

%%% Parameters for mesh smoothing
parametersMeshProcessing.nrOfIterationsMeshSmoothing    = 50;      % 50 iterations and not more are recommended for CBA
parametersMeshProcessing.meshSmoothingForce             = 0.07;
%parametersMeshProcessing.updateIntervalSmoothMesh   = parametersMeshProcessing.nrOfIterationsSmoothMesh;

%%% Parameters for AutoIt script MESH_RECO for mesh reconstruction
parametersMeshProcessing.AutoIT.timeEstimateMeshReconstruction  = 2000;
parametersMeshProcessing.AutoIT.timeEstimateMeshSmoothing       = 8000;

%%% Parameter for curvature smoothing after mesh smoothing and during
%%% curvature creation for the CBA mesh
parametersMeshProcessing.nrOfIterationsCurvatureSmoothing    = 5;

parametersMeshProcessing.nrOfIterationsInflateMeshToSphere          = 800;
parametersMeshProcessing.nrOfIterationsCorrectInflatedSphereMesh    = 3000;
%parametersMeshProcessing.nrOfIterationsInflateMeshToSphere          = 10;
%parametersMeshProcessing.nrOfIterationsCorrectInflatedSphereMesh    = 30;
parametersMeshProcessing.updateIntervalInflateMeshToSphere          = gcd(parametersMeshProcessing.nrOfIterationsInflateMeshToSphere, parametersMeshProcessing.nrOfIterationsCorrectInflatedSphereMesh);

%%% 
parametersMeshProcessing.nrOfVerticesStandardOneHemisphere  = 40962;
parametersMeshProcessing.nrOfVerticesStandardTwoHemispheres = parametersMeshProcessing.nrOfVerticesStandardOneHemisphere * 2;



%%% Parameters for sphere to sphere mapping and multi scale curvature file creation
parametersMeshProcessing.strStandardSphereMesh  = 'SPH';
parametersMeshProcessing.strFoldedSphereMesh    = 'SPH';
parametersMeshProcessing.strMultiScaleCurvature = 'CURVATURE'; 

parametersMeshProcessing.vIterationsMultiScaleCurvatureSmoothing    = [2, 7, 20, 40];

%%% Parameters for mesh to sphere morphing
parametersMeshProcessing.strSphereMesh  = 'SPHERE';


%%% Parameters for creation of curvature files with minial smoothing
parametersMeshProcessing.strUnsmoothedCurvature = 'PRESERVED_CURVATURE';
parametersMeshProcessing.vIterationsMinimalCurvatureSmoothing = [0, 1, 2, 3];

%%% Paramters for merging of meshes and other surface related files, e.g.
%%% ssm & mtc files
parametersMeshProcessing.strMergedMeshes    = 'MERGED';

parametersMeshProcessing.bSkipMtcFileCreation               = false;
parametersMeshProcessing.bSkipMtcFilePreprocessing          = false;
parametersMeshProcessing.bSkipMtcFileMerging                = false;
parametersMeshProcessing.bSkipIntermediateMtcFileDeletion   = false;


%%% Parameters for mesh inflation
parametersMeshProcessing.nrOfIterationsInflateMesh              = 500;
parametersMeshProcessing.nrOfIterationsInflateFoldedSphereMesh  = 300;
parametersMeshProcessing.meshInflationForce                     = 0.8;
parametersMeshProcessing.updateIntervalInflateMesh              = parametersMeshProcessing.nrOfIterationsInflateMesh / 20;
parametersMeshProcessing.updateIntervalInflateFoldedSphereMesh  = parametersMeshProcessing.nrOfIterationsInflateFoldedSphereMesh / 20;

parametersMeshProcessing.strInflatedMesh        = 'INFL';
parametersMeshProcessing.strSulcalDelineation   = 'SDL';
parametersMeshProcessing.strInflationIterations = 'ITER';




end