function parametersBrainVoyager = parametersBrainVoyagerATWM1()

global iStudy

parametersBrainVoyager.strBrainVoyager                  = 'BrainVoyager';
parametersBrainVoyager.strShortBrainVoyager             = 'BV';
parametersBrainVoyager.strParametersBrainVoyager        = sprintf('parameters%s%s', parametersBrainVoyager.strBrainVoyager, iStudy);

parametersBrainVoyager.strFolderBrainVoyager            = 'C:\Program Files\BrainVoyager';

parametersBrainVoyager.iVersionMajor                    = 20;
parametersBrainVoyager.iVersionMinor                    = 4;
parametersBrainVoyager.iVersionPatch                    = 0;
parametersBrainVoyager.iBuildNumber                     = 3188;     %%% This build corresponds to v20.4
parametersBrainVoyager.bIs64Bits                        = true;

parametersBrainVoyager.str32Bits                        = '32bit';
parametersBrainVoyager.str64Bits                        = '64bit';

parametersBrainVoyager.strBrainVoyagerProgId            = sprintf('%s.%sScriptAccess.1', parametersBrainVoyager.strBrainVoyager, parametersBrainVoyager.strBrainVoyager);  % used to call BrainVoyager via actxserver command

parametersBrainVoyager.strBrainVoyagerComProcess        = sprintf('%s [COM]', parametersBrainVoyager.strBrainVoyager);
parametersBrainVoyager.strBrainVoyagerExecutable        = sprintf('%s.exe', parametersBrainVoyager.strBrainVoyager);
parametersBrainVoyager.strAltBrainVoyagerExecutable     = 'BRAINV~1.EXE';       % This might be needed for processes called by AutoIT on some PCs Windows versions, e.g. Win7
parametersBrainVoyager.strBrainVoyagerSessionName       = 'Console';

parametersBrainVoyager.strPathBrainVoyagerExecutable    = sprintf('%s\\%s', parametersBrainVoyager.strFolderBrainVoyager, parametersBrainVoyager.strBrainVoyagerExecutable);


end




