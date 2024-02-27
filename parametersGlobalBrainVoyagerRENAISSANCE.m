function parametersGlobalBrainVoyager = parametersGlobalBrainVoyagerATWM1()

global iStudy

%%%
iStudy = 'ATWM1';

parametersBrainVoyager      = eval(['parametersBrainVoyager', iStudy]);
parametersBrainVoyagerQX    = eval(['parametersBrainVoyagerQX', iStudy]);

parametersGlobalBrainVoyager.strDefaultBrainVoyagerVersion              = 'BrainVoyagerQX';
parametersGlobalBrainVoyager.aStrParametersBvVersions                   = {
                                                                            parametersBrainVoyager      % MostCurrentBrainVoyagerVersion
                                                                            parametersBrainVoyagerQX    % DefaultBrainVoyagerVersion for ATWM1
                                                                            };

parametersGlobalBrainVoyager.indexMostCurrentBrainVoyagerVersion        = 1;
parametersGlobalBrainVoyager.indexDefaultBrainVoyagerVersion            = 2;

parametersGlobalBrainVoyager.parametersMostCurrentBrainVoyagerVersion   = parametersGlobalBrainVoyager.aStrParametersBvVersions{parametersGlobalBrainVoyager.indexMostCurrentBrainVoyagerVersion};
parametersGlobalBrainVoyager.parametersDefaultBrainVoyagerVersion       = parametersGlobalBrainVoyager.aStrParametersBvVersions{parametersGlobalBrainVoyager.indexDefaultBrainVoyagerVersion};

parametersGlobalBrainVoyager.nrOfBvVersions                             = numel(parametersGlobalBrainVoyager.aStrParametersBvVersions);
parametersGlobalBrainVoyager.maxNrOfTerminationAttempts                 = 3;


end




