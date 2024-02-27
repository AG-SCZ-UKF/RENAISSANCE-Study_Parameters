function parametersMeshTimeCourse = parametersMeshTimeCourseATWM1()

parametersMeshTimeCourse.strMeshSamplingUnit        = 'mm';

parametersMeshTimeCourse.vStandardMeshSamplingDepth = [-1     3];   % [From To] in mm   0.0 = at vertex
parametersMeshTimeCourse.mMeshSamplingDepth         = [             % [From To] in mm   0.0 = at vertex
                                                        % 5 mm sampling width
                                                        [-4     0]
                                                        [-3     1]
                                                        [-2     2]
                                                        [-1     3]
                                                        [0      4]
                                                        [1      5]
                                                        % 3 mm sampling width
                                                        [-4    -1]
                                                        [-3     0]
                                                        [-2     1]
                                                        [-1     2]
                                                        [0      3]
                                                        [1      4]
                                                        [2      5]
                                                        ];
                                                    
                                                    
parametersMeshTimeCourse.nMeshSamplingDepthComb                 = size(parametersMeshTimeCourse.mMeshSamplingDepth);
parametersMeshTimeCourse.nMeshSamplingDepthComb                 = parametersMeshTimeCourse.nMeshSamplingDepthComb(1);
for cmsd = 1:parametersMeshTimeCourse.nMeshSamplingDepthComb
    parametersMeshTimeCourse.aStrMeshSamplingDepth{cmsd}        = sprintf('%i %s     to     %i %s', parametersMeshTimeCourse.mMeshSamplingDepth(cmsd, 1), parametersMeshTimeCourse.strMeshSamplingUnit, parametersMeshTimeCourse.mMeshSamplingDepth(cmsd, 2), parametersMeshTimeCourse.strMeshSamplingUnit);
    parametersMeshTimeCourse.aStrMeshSamplingDepthShort{cmsd}   = sprintf('%i_to_%i_%s', parametersMeshTimeCourse.mMeshSamplingDepth(cmsd, 1), parametersMeshTimeCourse.mMeshSamplingDepth(cmsd, 2), parametersMeshTimeCourse.strMeshSamplingUnit);
end

parametersMeshTimeCourse.iStandardMeshSamplingDepth             = 4;
parametersMeshTimeCourse.iSelectedMeshSamplingDepth             = parametersMeshTimeCourse.iStandardMeshSamplingDepth;
parametersMeshTimeCourse.bStandardMeshSamplingDepthSelected     = true;

%parametersMeshTimeCourse.iSelectedMeshSamplingDepth             = 3;
parametersMeshTimeCourse.bUseStandardMeshSamplingDepth          = false;

if parametersMeshTimeCourse.bUseStandardMeshSamplingDepth
    parametersMeshTimeCourse.vMeshSamplingDepth                 = parametersMeshTimeCourse.vStandardMeshSamplingDepth;
else
    parametersMeshTimeCourse.vMeshSamplingDepth                 = parametersMeshTimeCourse.mMeshSamplingDepth(parametersMeshTimeCourse.iSelectedMeshSamplingDepth,:);
end
parametersMeshTimeCourse.strMeshSampling                        = sprintf('%i_to_%i_%s', parametersMeshTimeCourse.vMeshSamplingDepth(1), parametersMeshTimeCourse.vMeshSamplingDepth(2), parametersMeshTimeCourse.strMeshSamplingUnit);


end