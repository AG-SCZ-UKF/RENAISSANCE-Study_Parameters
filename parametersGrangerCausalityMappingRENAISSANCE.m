function parametersGrangerCausalityMapping = parametersGrangerCausalityMappingATWM1()

parametersGrangerCausalityMapping.strGcm                = 'GCM';
parametersGrangerCausalityMapping.strGcmspec            = 'GCMSPEC';

parametersGrangerCausalityMapping.strRef2Vox            = 'Ref2Vox';
parametersGrangerCausalityMapping.strVox2Ref            = 'Vox2Ref';
parametersGrangerCausalityMapping.strInst               = 'Inst';
parametersGrangerCausalityMapping.strDiffGcm            = 'dGCM';
parametersGrangerCausalityMapping.strDiffGcmInstThresh  = 'dGCM IT';

parametersGrangerCausalityMapping.strSingleSubject      = 'Single_Subject';

parametersGrangerCausalityMapping.aStrMapTypes          = {
                                                            parametersGrangerCausalityMapping.strRef2Vox
                                                            parametersGrangerCausalityMapping.strVox2Ref
                                                            parametersGrangerCausalityMapping.strInst
                                                            parametersGrangerCausalityMapping.strDiffGcm
                                                            %parametersGrangerCausalityMapping.strDiffGcmInstThresh
                                                            %'dGCM IT'       %%% unclear map
                                                            };
                                                        
parametersGrangerCausalityMapping.nMapTypes             = numel(parametersGrangerCausalityMapping.aStrMapTypes);

parametersGrangerCausalityMapping.indMapRef2Vox             = find(contains(parametersGrangerCausalityMapping.aStrMapTypes, parametersGrangerCausalityMapping.strRef2Vox));
parametersGrangerCausalityMapping.indMapVox2Ref             = find(contains(parametersGrangerCausalityMapping.aStrMapTypes, parametersGrangerCausalityMapping.strVox2Ref));
parametersGrangerCausalityMapping.indMapInst                = find(contains(parametersGrangerCausalityMapping.aStrMapTypes, parametersGrangerCausalityMapping.strInst));
parametersGrangerCausalityMapping.indMapDiffGcm             = find(contains(parametersGrangerCausalityMapping.aStrMapTypes, parametersGrangerCausalityMapping.strDiffGcm));
%parametersGrangerCausalityMapping.indMapDiffGcmInstThresh   = find(contains(parametersGrangerCausalityMapping.aStrMapTypes, parametersGrangerCausalityMapping.strDiffGcmInstThresh));


parametersGrangerCausalityMapping.vIndMapType           = [
                                                            %parametersGrangerCausalityMapping.indMapRef2Vox
                                                            %parametersGrangerCausalityMapping.indMapVox2Ref
                                                            parametersGrangerCausalityMapping.indMapInst
                                                            parametersGrangerCausalityMapping.indMapDiffGcm
                                                            %parametersGrangerCausalityMapping.indMapDiffGcmInstThresh
                                                            ];

%parametersGrangerCausalityMapping.aStrMapTypesForGroupAnalysis  = parametersGrangerCausalityMapping.aStrMapTypes(parametersGrangerCausalityMapping.vIndMapType);
parametersGrangerCausalityMapping.aStrMapTypesForGroupAnalysis  = {
                                                                    %'Ref2Vox'
                                                                    %'Vox2Ref'
                                                                    'Inst'
                                                                    'dGCM'
                                                                    %'dGCM IT'
                                                                    };
                                    
parametersGrangerCausalityMapping.nMapTypesForGroupAnalysis     = numel(parametersGrangerCausalityMapping.aStrMapTypesForGroupAnalysis);

for cmt = 1:parametersGrangerCausalityMapping.nMapTypesForGroupAnalysis
    parametersGrangerCausalityMapping.iMapTypesForGroupAnalysis(cmt) = find(strcmp(parametersGrangerCausalityMapping.aStrMapTypesForGroupAnalysis{cmt}, parametersGrangerCausalityMapping.aStrMapTypes));
end

%%% 
parametersGrangerCausalityMapping.strGcmLogfilesFolder = sprintf('%s_script_logfiles', parametersGrangerCausalityMapping.strGcm);

%%% CHECK
parametersGrangerCausalityMapping.miniumNrOfTimePointsForDiffGcm    = 5; % valid for GCM plugin v2.0
parametersGrangerCausalityMapping.defaultNrOfGcmTimepoints          = parametersGrangerCausalityMapping.miniumNrOfTimePointsForDiffGcm;
parametersGrangerCausalityMapping.nrOfGcmTimepoints                 = parametersGrangerCausalityMapping.defaultNrOfGcmTimepoints;
parametersGrangerCausalityMapping.addTimepoints                     = parametersGrangerCausalityMapping.nrOfGcmTimepoints - 1;
parametersGrangerCausalityMapping.nrOfGcmPoisPerFile                = 2;

parametersGrangerCausalityMapping.bSplitPoiFile = false;

%%% GCM RFX analysis
parametersGrangerCausalityMapping.strRfxAnalysis        = 'RFX';
parametersGrangerCausalityMapping.strRfxspec            = 'RFXSPEC';
parametersGrangerCausalityMapping.strStatisticalTest    = 'UNPAIRED_T';

%%% Parameters regarding the handling of POI files
parametersGrangerCausalityMapping.bSplitPoiFile         = false;

%%% Parameters for the control of the GCM plugin by AutoIT
parametersGrangerCausalityMapping.autoIt.gcmDefaultProcessingTime   = 10000000;
parametersGrangerCausalityMapping.autoIt.gcmDefaultProcessingTime   = 10000;
parametersGrangerCausalityMapping.autoIt.gcmProcessingTime          = parametersGrangerCausalityMapping.autoIt.gcmDefaultProcessingTime;

parametersGrangerCausalityMapping.autoIt.command1       = 10;   %%% 
parametersGrangerCausalityMapping.autoIt.command1Alt    = 11;

%%% Result types
parametersGrangerCausalityMapping.gcmResultsSingleSubject   = 'Single_Subject_Maps';
parametersGrangerCausalityMapping.gcmResultsMultiSubject    = 'Multiple_Subject_Maps';
parametersGrangerCausalityMapping.gcmResultsContrasts       = 'Contrast_Maps';


end