function parametersPlugins = parametersPluginsATWM1()
    
global iStudy 
global iSelectedFolderBrainVoyagerPlugins 

folderDefinition            = eval(['folderDefinition', iStudy]);
parametersBrainVoyager      = eval(['parametersBrainVoyager', iStudy]);
parametersBrainVoyagerQX    = eval(['parametersBrainVoyagerQX', iStudy]);

parametersPlugins.strDocuments  = 'Documents';
parametersPlugins.strExtensions = 'Extensions';

parametersPlugins.strBrainVoyagerQXExtensions = sprintf('%s%s', parametersBrainVoyagerQX.strShortBrainVoyager, parametersPlugins.strExtensions);
parametersPlugins.strBrainVoyagerExtensions   = sprintf('%s%s', parametersBrainVoyager.strShortBrainVoyager, parametersPlugins.strExtensions);

%parametersPlugins.strPluginsOld   = 'Plugins_32';
parametersPlugins.strPlugins32bit = 'Plugins_32';
parametersPlugins.strPlugins64bit = 'Plugins_64';

%%% Select 32bit or 64bit plugins
%parametersPlugins.strPlugins = parametersPlugins.strPlugins64bit;

% Get the path of the user who logged in to the computer.
parametersPlugins.strFolderUserProfile = getenv('USERPROFILE');

%%% Plugin folder for BV 20.0 and higher versions
parametersPlugins.strFolderBrainVoyagerPlugins      = fullfile(parametersPlugins.strFolderUserProfile, '\', parametersPlugins.strDocuments, '\', parametersPlugins.strBrainVoyagerExtensions, '\', parametersPlugins.strPlugins64bit, '\');

%%% Plugin folder for BVQX up to version 2.8.4
parametersPlugins.strFolderBrainVoyagerQXPlugins    = fullfile(parametersPlugins.strFolderUserProfile, '\', parametersPlugins.strDocuments, '\', parametersPlugins.strBrainVoyagerQXExtensions, '\', parametersPlugins.strPlugins64bit, '\');

%%% Plugin folder for BVQX up to version 2.0.6 (used for GCM only)
parametersPlugins.strFolderBrainVoyagerQXOldPlugins = fullfile(parametersPlugins.strFolderUserProfile, '\', parametersPlugins.strDocuments, '\', parametersPlugins.strBrainVoyagerQXExtensions, '\', parametersPlugins.strPlugins32bit, '\');


parametersPlugins.aStrFolderBrainVoyagerPlugins = {
                                                    parametersPlugins.strFolderBrainVoyagerPlugins      % 1 = BV20.X
                                                    parametersPlugins.strFolderBrainVoyagerQXPlugins    % 2 = BVQX2.8
                                                    parametersPlugins.strFolderBrainVoyagerQXOldPlugins % 3 = BVQX2.0
                                                    };

%%% Select BV 20 or BVQX
% BVQX selected
parametersPlugins.iSelectedFolderBrainVoyagerPlugins    = iSelectedFolderBrainVoyagerPlugins;
parametersPlugins.strSelectedFolderBrainVoyagerPlugins  = parametersPlugins.aStrFolderBrainVoyagerPlugins{parametersPlugins.iSelectedFolderBrainVoyagerPlugins};


%%% Folder containing all the plugins
parametersPlugins.strFolderPlugins = folderDefinition.plugins;
parametersPlugins.strBrainVoyagerQXOriginalPlugins64bit = sprintf('%s_%s_%s', parametersBrainVoyagerQX.strShortBrainVoyager, parametersPlugins.strPlugins64bit, iStudy);
parametersPlugins.strBrainVoyagerOriginalPlugins64bit   = sprintf('%s_%s_%s', parametersBrainVoyager.strShortBrainVoyager, parametersPlugins.strPlugins64bit, iStudy);



%%% Select BV 20 or BVQX
% BVQX selected
parametersPlugins.strOriginalPlugins64bit = parametersPlugins.strBrainVoyagerQXOriginalPlugins64bit; 


%%% Define plugin names
parametersPlugins.strCopePlugin     = 'COPE';
parametersPlugins.strGcmPlugin      = 'GCM';
parametersPlugins.strGcmRfxPlugin   = 'GCM';

parametersPlugins.strNoPlugin   = 'NO_PLUGIN';

parametersPlugins.aStrPlugins = {
                                    parametersPlugins.strCopePlugin
                                    parametersPlugins.strGcmPlugin
                                    parametersPlugins.strGcmRfxPlugin
                                    parametersPlugins.strNoPlugin
                                    };

parametersPlugins.strDefaultPlugin  = parametersPlugins.strNoPlugin;
parametersPlugins.strSelectedPlugin = parametersPlugins.strDefaultPlugin;
                                
parametersPlugins.strFolderOriginalPlugins = fullfile(parametersPlugins.strFolderPlugins, parametersPlugins.strOriginalPlugins64bit);


end