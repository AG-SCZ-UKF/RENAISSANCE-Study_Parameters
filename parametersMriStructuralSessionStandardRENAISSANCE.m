function parametersMriSessionStandard = parametersMriStructuralSessionStandardATWM1(parametersMriSessionStandard)

% fileIndexFmr_WM
parametersMriSessionStandard.fileIndexFmr_WM    = [
                                                    NaN
                                                    NaN
                                                    NaN
                                                    NaN
                                                    ];

% fileIndexFmr_LOC
parametersMriSessionStandard.fileIndexFmr_LOC   = [
                                                    NaN
                                                    ];

% fileIndexFmr_COPE
parametersMriSessionStandard.fileIndexFmr_COPE  = [
                                                    NaN
                                                    NaN
                                                    NaN
                                                    NaN
                                                    NaN
                                                    ];

% fileIndexVmrHighRes
parametersMriSessionStandard.fileIndexVmrHighRes    = 2;

% fileIndexVmrLowRes
parametersMriSessionStandard.fileIndexVmrLowRes     = 4;

% fileIndexAnatomicalLocalizer
parametersMriSessionStandard.fileIndexAnatomicalLocalizer   = [
                                                                1
                                                                3
                                                                ];

parametersMriSessionStandard.nRuns = 4;
aStrFieldnames = fieldnames(parametersMriSessionStandard);
indFileFieldnames = contains(aStrFieldnames, 'fileIndex');
aStrValidFieldnames = aStrFieldnames(indFileFieldnames);
vFileIndices = [];
for cfn = 1:numel(aStrValidFieldnames)
    vFileIndices = [vFileIndices, (parametersMriSessionStandard.(matlab.lang.makeValidName(aStrValidFieldnames{cfn})))'];
end
vFileIndices = sort(vFileIndices);
parametersMriSessionStandard.nRuns = max(vFileIndices);

end


%{
parametersMriSessionStandard.fileIndexFmr_WM(1:end)     = [];

% fileIndexFmr_LOC
parametersMriSessionStandard.fileIndexFmr_LOC(1:end)    = [];

% fileIndexFmr_COPE
parametersMriSessionStandard.fileIndexFmr_COPE      = [];

% fileIndexVmrHighRes
parametersMriSessionStandard.fileIndexVmrHighRes    = 2;

% fileIndexVmrLowRes
parametersMriSessionStandard.fileIndexVmrLowRes     = 4;

% fileIndexAnatomicalLocalizer
parametersMriSessionStandard.fileIndexAnatomicalLocalizer   = [
                                                                1
                                                                3
                                                                ];
%}