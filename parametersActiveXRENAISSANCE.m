function parametersActiveX = parametersActiveXATWM1()

parametersActiveX.strRegisterServer     = 'regserver';
parametersActiveX.strUnregisterServer   = 'unregserver';

parametersActiveX.strCommandRegisterServer      = sprintf('/%s', parametersActiveX.strRegisterServer);
parametersActiveX.strCommandUnregisterServer    = sprintf('/%s', parametersActiveX.strUnregisterServer);

end