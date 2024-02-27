function parametersCoregistration = parametersCoregistrationATWM1()

global iStudy

parametersStudy = eval(['parametersStudy', iStudy]);

%%% General parameters
parametersCoregistration.indexInitialAlignment              = 'IA'; 
parametersCoregistration.indexFineAlignment                 = 'FA';

%%% Parameters for gradient based registration
parametersCoregistration.strGradientBasedAlignment          = 'GBAA';
parametersCoregistration.strGradientBasedAlignmentLong      = 'Gradient-based affine alignment';
parametersCoregistration.strTransformationParameters        = 'PAR';
parametersCoregistration.useAttachedAmr                     = false;

parametersCoregistration.vNrOfTransformationParameters      = [
                                                                6   % Rigid body
                                                                9   % Translation, Rotation, Scale
                                                                12  % Full affine
                                                                ];
parametersCoregistration.indRigidBodyTransformation         = 1;
parametersCoregistration.strRigidBodyCoregistration         = sprintf('%s_%i%s', parametersCoregistration.strGradientBasedAlignment, parametersCoregistration.vNrOfTransformationParameters(parametersCoregistration.indRigidBodyTransformation), parametersCoregistration.strTransformationParameters);

%%{
parametersCoregistration.aStrSlice1Center                   = {
                                                                 'Slice1CenterX' % center of 1st slice X
                                                                 'Slice1CenterY' % center of 1st slice Y
                                                                 'Slice1CenterZ' % center of 1st slice Z
                                                                 };
                                                             
parametersCoregistration.aStrSliceNCenter                   = {
                                                                 'SliceNCenterX' % center of last slice X
                                                                 'SliceNCenterY' % center of last slice Y
                                                                 'SliceNCenterZ' % center of last slice Z
                                                                 };
                                                             
parametersCoregistration.nrOfDimensions                     = numel(parametersCoregistration.aStrSlice1Center);
parametersCoregistration.strFmrSliceCenter                  = 'FmrSliceCenter';
%{
                                                                 
% Translation X = 100                                                                 
1.0000000000000000   0.0000000000000000   0.0000000000000000   0.0000000000000000
0.0000000000000000   1.0000000000000000   0.0000000000000000   0.0000000000000000
0.0000000000000000   0.0000000000000000   1.0000000000000000 100.0000000000000000
0.0000000000000000   0.0000000000000000   0.0000000000000000   1.0000000000000000


% Translation Y = 100
1.0000000000000000   0.0000000000000000   0.0000000000000000 100.0000000000000000
0.0000000000000000   1.0000000000000000   0.0000000000000000   0.0000000000000000
0.0000000000000000   0.0000000000000000   1.0000000000000000   0.0000000000000000
0.0000000000000000   0.0000000000000000   0.0000000000000000   1.0000000000000000
                     
% Translation Z = 100       
1.0000000000000000   0.0000000000000000   0.0000000000000000   0.0000000000000000
0.0000000000000000   1.0000000000000000   0.0000000000000000 100.0000000000000000
0.0000000000000000   0.0000000000000000   1.0000000000000000   0.0000000000000000
0.0000000000000000   0.0000000000000000   0.0000000000000000   1.0000000000000000
                                                             
%}
                                                                 
parametersCoregistration.indTranslX                         = [3 4];
parametersCoregistration.indTranslY                         = [1 4];
parametersCoregistration.indTranslZ                         = [2 4];

parametersCoregistration.aIndTransl                         = {
                                                                parametersCoregistration.indTranslX
                                                                parametersCoregistration.indTranslY
                                                                parametersCoregistration.indTranslZ
                                                                };

                                                                 
%%% Parameters for boundary based registration
% Using acpc vmr might solve some of the segmentation errors during BBR
parametersCoregistration.strBoundaryBasedRegistration       = 'BBR';
parametersCoregistration.strBoundaryBasedRegistrationLong   = 'Boundary-based registration';
parametersCoregistration.useAcpcVmr                         = false;

parametersCoregistration.str3D3Dalignment                   = '3D3D';
parametersCoregistration.strCoregistration                  = parametersStudy.strMethodCoregistration;

parametersCoregistration.strEnhancedTissueContrast          = 'ETC';

parametersCoregistration.strCoregMatrix                     = 'coregMatrix';

parametersCoregistration.nrOfCyclesSigmaFilter              = 7;
parametersCoregistration.strCyclesSigmaFilter               = 'x';      %%% 7x-R5 = sigma filter with 7 cycles and a range of 5

parametersCoregistration.rangeSigmaFilter                   = 5;
parametersCoregistration.strRangeSigmaFilter                = 'R';      %%% 7x-R5 = sigma filter with 7 cycles and a range of 5

parametersCoregistration.strSigmaFilterForSegmentation      = sprintf('%i%s-%s%i', parametersCoregistration.nrOfCyclesSigmaFilter, parametersCoregistration.strCyclesSigmaFilter, parametersCoregistration.strRangeSigmaFilter, parametersCoregistration.rangeSigmaFilter);
parametersCoregistration.strAutomaticSegmentationForBbr     = sprintf('%s-%s', parametersCoregistration.strEnhancedTissueContrast, parametersCoregistration.strSigmaFilterForSegmentation);

parametersCoregistration.strDecimate                        = 'D';
parametersCoregistration.nrOfVerticesInDecimatedMesh        = 300;
parametersCoregistration.strUnitDecimatedVertices           = 'k';      %%% D300k = decimate mesh to 300k vertices

parametersCoregistration.strDecimatedMesh                   = sprintf('%s%i%s', parametersCoregistration.strDecimate, parametersCoregistration.nrOfVerticesInDecimatedMesh, parametersCoregistration.strUnitDecimatedVertices);

%%% Files created during vmr segmentation for boundary based registration
parametersCoregistration.strFltFile                         = 'TempCSFDistMap.flt';


%%%
parametersCoregistration.aStrCoregistrationMethods          = {
                                                                parametersCoregistration.strGradientBasedAlignment
                                                                parametersCoregistration.strBoundaryBasedRegistration
    };
parametersCoregistration.aStrCoregistrationMethodsLong      = {
                                                                parametersCoregistration.strGradientBasedAlignmentLong
                                                                parametersCoregistration.strBoundaryBasedRegistrationLong
    };

parametersCoregistration.indDefaultCoregistrationMethod         = 1;
parametersCoregistration.strDefaultCoregistrationMethod         = parametersCoregistration.aStrCoregistrationMethods{parametersCoregistration.indDefaultCoregistrationMethod};
parametersCoregistration.strDefaultCoregistrationMethodLong     = parametersCoregistration.aStrCoregistrationMethodsLong{parametersCoregistration.indDefaultCoregistrationMethod};

parametersCoregistration.indSelectedCoregistrationMethod        = parametersCoregistration.indDefaultCoregistrationMethod;
parametersCoregistration.strSelectedCoregistrationMethod        = parametersCoregistration.aStrCoregistrationMethods{parametersCoregistration.indSelectedCoregistrationMethod};
parametersCoregistration.strSelectedCoregistrationMethodLong    = parametersCoregistration.aStrCoregistrationMethodsLong{parametersCoregistration.indSelectedCoregistrationMethod};


parametersCoregistration.AutoIT.GBAA.timeInitialAlignment       = 10000;
parametersCoregistration.AutoIT.GBAA.timeFineAlignment          = 10000;



parametersCoregistration.AutoIT.BBR.timeVmrSegmentation        = 30000;
parametersCoregistration.AutoIT.BBR.timeInitialAlignment       = parametersCoregistration.AutoIT.GBAA.timeInitialAlignment;
parametersCoregistration.AutoIT.BBR.timeFineAlignment1         = 2000;      % Preparation time before FA
parametersCoregistration.AutoIT.BBR.timeFineAlignment2         = 40000;     % Duration of FA

end