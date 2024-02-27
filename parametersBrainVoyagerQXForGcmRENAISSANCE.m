function parametersBrainVoyager = parametersBrainVoyagerQXForGcmATWM1()

global iStudy

parametersBrainVoyager.strBrainVoyager                  = 'BrainVoyagerQXForGcm';
parametersBrainVoyager.strShortBrainVoyager             = 'BVQXGCM';
parametersBrainVoyager.strParametersBrainVoyager        = sprintf('parameters%s%s', parametersBrainVoyager.strBrainVoyager, iStudy);

parametersBrainVoyager.strFolderBrainVoyager            = 'C:\Program Files (x86)\BrainVoyager QX';

%%% Check, whether installation path for Windwos 7 is used
parametersBrainVoyager.strFolderBrainVoyagerOld         = 'C:\Program Files (x86)\BrainVoyager QX (32 bit)';
if exist(parametersBrainVoyager.strFolderBrainVoyagerOld, 'dir')
    parametersBrainVoyager.strFolderBrainVoyager = parametersBrainVoyager.strFolderBrainVoyagerOld;
end

parametersBrainVoyager.iVersionMajor                    = 2;
parametersBrainVoyager.iVersionMinor                    = 0;
parametersBrainVoyager.iVersionPatch                    = 6;
parametersBrainVoyager.iBuildNumber                     = 1460;     %%% This build corresponds to v2.0.6
parametersBrainVoyager.bIs64Bits                        = true;

parametersBrainVoyager.str32Bits                        = '32bit';
parametersBrainVoyager.str64Bits                        = '64bit';
%parametersBrainVoyager.str64Bits                        = parametersBrainVoyager.str32Bits;

parametersBrainVoyager.strBrainVoyagerProgId            = 'BrainVoyagerQX.BrainVoyagerQXScriptAccess.1';  % used to call BrainVoyager via actxserver command

parametersBrainVoyager.strBrainVoyagerComProcess        = 'BrainVoyager QX [COM]';
parametersBrainVoyager.strBrainVoyagerExecutable        = 'BrainVoyagerQX.exe';
parametersBrainVoyager.strAltBrainVoyagerExecutable     = 'BRAINV~1.EXE';       % This might be needed for processes called by AutoIT on some PCs Windows versions, e.g. Win7
parametersBrainVoyager.strBrainVoyagerSessionName       = 'Console';

parametersBrainVoyager.strPathBrainVoyagerExecutable    = sprintf('%s\\%s', parametersBrainVoyager.strFolderBrainVoyager, parametersBrainVoyager.strBrainVoyagerExecutable);


end