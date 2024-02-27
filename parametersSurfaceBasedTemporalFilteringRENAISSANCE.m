function parametersTemporalFilteringMtc = parametersSurfaceBasedTemporalFilteringATWM1()

parametersTemporalFilteringMtc.cutOffValue              = 3; 
parametersTemporalFilteringMtc.unit                     = 'cycles';
parametersTemporalFilteringMtc.indexLinearTrendRemoval  = 'LTR';
parametersTemporalFilteringMtc.indexTemporalHighPass    = 'THP';
parametersTemporalFilteringMtc.indexCutOffValue         = num2str(parametersTemporalFilteringMtc.cutOffValue);
parametersTemporalFilteringMtc.indexUnit                = 'c';
parametersTemporalFilteringMtc.indexTemporaFiltering    = sprintf('%s_%s-%s%s', parametersTemporalFilteringMtc.indexLinearTrendRemoval, parametersTemporalFilteringMtc.indexTemporalHighPass, parametersTemporalFilteringMtc.indexCutOffValue, parametersTemporalFilteringMtc.indexUnit);


end