function parametersAnalysis_LOC_MRI = parametersAnalysis_LOC_MRI_ATWM1()


parametersAnalysis_LOC_MRI.aSmpColor   = {
    [0 0 255]
    [255 0 0]
    [255 125 0]
    [0 125 255]
    };

parametersAnalysis_LOC_MRI.contrasts.posVsBase = 'Pos_vs_Baseline';
parametersAnalysis_LOC_MRI.contrasts.posVsPosWeighted = 'Pos_vs_Pos_Weighted';

parametersAnalysis_LOC_MRI.contrasts.aStrContrasts  = {
                                                        parametersAnalysis_LOC_MRI.contrasts.posVsBase
                                                        parametersAnalysis_LOC_MRI.contrasts.posVsPosWeighted
                                                        };
 parametersAnalysis_LOC_MRI.contrasts.nrOfContrasts = numel(parametersAnalysis_LOC_MRI.contrasts.aStrContrasts);                                                   
                                                    
end