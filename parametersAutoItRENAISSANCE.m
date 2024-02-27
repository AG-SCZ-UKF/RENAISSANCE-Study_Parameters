function parametersAutoIt = parametersAutoItATWM1()

global iStudy

parametersAutoIt.strAutoIt                  = 'AutoIT';
parametersAutoIt.strAutoItAlt               = 'AutoIt';

parametersAutoIt.strScripts                 = 'Scripts';
parametersAutoIt.strFolderDataInputFiles    = 'Input_Data_Files';
parametersAutoIt.strInputOutputData         = 'ioData';

parametersAutoIt.strParametersAutoIt        = sprintf('parameters%s%s', parametersAutoIt.strAutoItAlt, iStudy);


%%% Name of files generated for AutoIT controlled wrappers
parametersAutoIt.strInputDataFileAutoIt     = 'AutoIt_input_data';
parametersAutoIt.strInputDataFilePlugin     = 'Plugin_input_data';
parametersAutoIt.strInputDataFilePlugin     = 'BrainVoyager_input_data';


%%% First part of the name of AutoIT scripts running BV plugins
parametersAutoIt.strAutoItScriptForPlugin       = sprintf('AutoIT_script_for_BrainVoyager_plugin');

%%% First part of the name of AutoIT scripts running BV processes
parametersAutoIt.strAutoItScriptForBvProcess    = sprintf('AutoIT_script_for_BrainVoyager_process');


%%% Delayed termination of a running AutoIT exe in case of errors and
%%% repeated execution
parametersAutoIt.bEnableDelayedTerminationOfAutoItExe   = false;    % Default option

parametersAutoIt.bRepeatUnsuccessfulAutoItExe           = false;    % Default option
parametersAutoIt.nrOfMaxRepeatAttempts                  = 1;        % Default option


end