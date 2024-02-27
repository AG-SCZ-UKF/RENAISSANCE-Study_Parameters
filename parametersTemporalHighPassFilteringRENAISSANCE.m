function parametersTemporalHighPassFiltering = parametersTemporalHighPassFilteringATWM1()


parametersTemporalHighPassFiltering.strPreprocessingStep        = 'Temporal high pass filtering with linear trend removal';
parametersTemporalHighPassFiltering.strLinearTrendRemoval       = 'LTR';

parametersTemporalHighPassFiltering.indFilteringMethod          = 1;

parametersTemporalHighPassFiltering.aStrFilteringMethods        = {
                                                                    'TemporalHighPassFilter'
                                                                    'TemporalHighPassFilterGLMFourier'
                                                                    'TemporalHighPassFilterGLMDCT'
                                                                    };
parametersTemporalHighPassFiltering.aStrAbbrFilteringMethods    = {
                                                                    'THPFFT'        % TemporalHighPassFilter = frequency-space filter using fast fourier transformation (FFT)
                                                                    'THPGLMF'       % TemporalHighPassFilterGLMFourier = GLM with Fourier basis set (includes linear trend)
                                                                    'THPGLMDCT'     % TemporalHighPassFilterGLMDCT = GLM with Discrete Cosine Tranform (DCT) basis set
                                                                    };
parametersTemporalHighPassFiltering.aStrUnits                   = {
                                                                    'cycles'
                                                                    'cycles'
                                                                    'basis functions'
                                                                    };
parametersTemporalHighPassFiltering.vectorCutOffValues          = [3, 3, 5];

parametersTemporalHighPassFiltering.strFilteringMethod          = parametersTemporalHighPassFiltering.aStrFilteringMethods{parametersTemporalHighPassFiltering.indFilteringMethod};
parametersTemporalHighPassFiltering.strAbbrFilteringMethod      = parametersTemporalHighPassFiltering.aStrAbbrFilteringMethods{parametersTemporalHighPassFiltering.indFilteringMethod};
parametersTemporalHighPassFiltering.strUnit                     = parametersTemporalHighPassFiltering.aStrUnits{parametersTemporalHighPassFiltering.indFilteringMethod}(1);
parametersTemporalHighPassFiltering.cutOffValue                 = parametersTemporalHighPassFiltering.vectorCutOffValues(parametersTemporalHighPassFiltering.indFilteringMethod);
parametersTemporalHighPassFiltering.strCutOffValue             	= num2str(parametersTemporalHighPassFiltering.cutOffValue);

%%% Workaround for THPFFT method. Naming convention for output files
%%% differs between manual preprocessing and scripting
%%% Delete, if discrepancy has been removed in a future version.
if parametersTemporalHighPassFiltering.indFilteringMethod == 1
    parametersTemporalHighPassFiltering.strAbbrFilteringMethod = 'THP';
    parametersTemporalHighPassFiltering.strUnit = 'cp';
    parametersTemporalHighPassFiltering.strCutOffValue = sprintf('%i.00', parametersTemporalHighPassFiltering.cutOffValue);
end

parametersTemporalHighPassFiltering.strFilteringParameters      = strcat(parametersTemporalHighPassFiltering.strLinearTrendRemoval, '_', parametersTemporalHighPassFiltering.strAbbrFilteringMethod, parametersTemporalHighPassFiltering.strCutOffValue, parametersTemporalHighPassFiltering.strUnit);
parametersTemporalHighPassFiltering.strLongFilteringParameters  = sprintf('%s with %s %s', parametersTemporalHighPassFiltering.strFilteringMethod, parametersTemporalHighPassFiltering.strCutOffValue, parametersTemporalHighPassFiltering.aStrUnits{parametersTemporalHighPassFiltering.indFilteringMethod});




end