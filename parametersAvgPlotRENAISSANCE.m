function parametersAvgPlot = parametersAvgPlotATWM1()

parametersAvgPlot.strAvg                = 'avg';
parametersAvgPlot.strStandardError      = 'se';

%%% Parameters relevant for the extraction of data from avg.dat files
parametersAvgPlot.strCurve              = 'CurveName:';
parametersAvgPlot.strIndexData          = '<data>';
parametersAvgPlot.strCurveDataPoints    = 'NrOfCurveDataPoints:';
parametersAvgPlot.strColon              = ':';
parametersAvgPlot.strDoubleQuotes       = '"';

%%% Estimated time for calculation of average plot in BrainVoyager
parametersAvgPlot.AutoIT.timeSingleSubjectAvgPlotComputation = 2000;    % measured in milliseconds

%%% Estimated time for the full AVG_PLOT AutoIT script
parametersAvgPlot.AutoIT.fullProcessingTime = 27; % measured in seconds


end