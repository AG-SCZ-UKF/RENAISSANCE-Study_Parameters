function parametersBrainVoyager = parametersBrainVoyagerQXATWM1()

global iStudy

parametersBrainVoyager.strBrainVoyager                  = 'BrainVoyagerQX';
parametersBrainVoyager.strShortBrainVoyager             = 'BVQX';
parametersBrainVoyager.strParametersBrainVoyager        = sprintf('parameters%s%s', parametersBrainVoyager.strBrainVoyager, iStudy);

parametersBrainVoyager.strFolderBrainVoyager            = 'C:\Program Files (x86)\BrainVoyager';

parametersBrainVoyager.iVersionMajor                    = 2;
parametersBrainVoyager.iVersionMinor                    = 8;
parametersBrainVoyager.iVersionPatch                    = 4;
parametersBrainVoyager.iBuildNumber                     = 2645;     %%% This build corresponds to v2.8.4
parametersBrainVoyager.bIs64Bits                        = true;

parametersBrainVoyager.str32Bits                        = '32bit';
parametersBrainVoyager.str64Bits                        = '64bit';

parametersBrainVoyager.strBrainVoyagerProgId            = 'BrainVoyagerQX.BrainVoyagerQXScriptAccess.1';  % used to call BrainVoyager via actxserver command

parametersBrainVoyager.strBrainVoyagerComProcess        = 'BrainVoyager QX [COM]';
parametersBrainVoyager.strBrainVoyagerExecutable        = 'BrainVoyagerQX.exe';
parametersBrainVoyager.strAltBrainVoyagerExecutable     = 'BRAINV~1.EXE';       % This might be needed for processes called by AutoIT on some PCs Windows versions, e.g. Win7
parametersBrainVoyager.strBrainVoyagerSessionName       = 'Console';

parametersBrainVoyager.strPathBrainVoyagerExecutable    = sprintf('%s\\%s', parametersBrainVoyager.strFolderBrainVoyager, parametersBrainVoyager.strBrainVoyagerExecutable);


end




