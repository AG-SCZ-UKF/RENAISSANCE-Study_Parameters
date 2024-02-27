function parametersTemporalFilteringMtc = parametersTemporalFilteringMtcATWM1()
parametersTemporalFilteringMtc.cutOffValue              = 3; 
parametersTemporalFilteringMtc.unit                     = 'cycles';
parametersTemporalFilteringMtc.strLinearTrendRemoval    = 'LTR';
parametersTemporalFilteringMtc.strTemporalHighPass      = 'THP';
parametersTemporalFilteringMtc.strCutOffValue           = num2str(parametersTemporalFilteringMtc.cutOffValue);
parametersTemporalFilteringMtc.strUnit                  = 'c';
parametersTemporalFilteringMtc.strTemporalFiltering     = sprintf('%s_%s-%s%s', parametersTemporalFilteringMtc.strLinearTrendRemoval, parametersTemporalFilteringMtc.strTemporalHighPass, parametersTemporalFilteringMtc.strCutOffValue, parametersTemporalFilteringMtc.strUnit);
