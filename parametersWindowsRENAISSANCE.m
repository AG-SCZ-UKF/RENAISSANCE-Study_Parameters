function parametersWindows = parametersWindowsATWM1()

parametersWindows.strWin7   = 'Win7';
parametersWindows.strWin8   = 'Win8';
parametersWindows.strWin10  = 'Win10';

%%% Microsoft Windows [Version 6.3.9600]
parametersWindows.strVersion    = 'Version';
parametersWindows.strVerSep     = '.';
parametersWindows.strStartVer   = '[';
parametersWindows.strEndVer     = ']';

parametersWindows.strVersionWin7    = '6.1.7601';
parametersWindows.strVersionWin8    = '6.2.9200';
parametersWindows.strVersionWin10   = '10.0.15063';

parametersWindows.aStrVersionsWin   = {
                                        parametersWindows.strVersionWin7
                                        parametersWindows.strVersionWin8
                                        parametersWindows.strVersionWin10
                                        };

%%%
parametersWindows.strWerFaultExecutable        = sprintf('WerFault.exe');


end