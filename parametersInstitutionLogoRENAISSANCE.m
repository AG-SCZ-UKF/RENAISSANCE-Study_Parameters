function parametersInstitutionLogo = parametersInstitutionLogoATWM1()

global iStudy

folderDefinition = eval(['folderDefinition', iStudy]);

%%% UKF logo properties for use in the subject information figure
parametersInstitutionLogo.folderLogo        = folderDefinition.templates;
parametersInstitutionLogo.strLogo           = 'UKF Logo englisch blau.jpg';
parametersInstitutionLogo.pathLogo          = strcat(parametersInstitutionLogo.folderLogo, parametersInstitutionLogo.strLogo);
parametersInstitutionLogo.sizeLogo          = [198 94];
parametersInstitutionLogo.sizeFactor        = 2;
parametersInstitutionLogo.adjustedLogoSize  = parametersInstitutionLogo.sizeLogo / parametersInstitutionLogo.sizeFactor;
parametersInstitutionLogo.positionLogo      = [6.5 2.6 6.0 3.0]; % in centimeters();


end