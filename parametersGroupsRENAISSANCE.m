function parametersGroups = parametersGroupsATWM1_MDD()

parametersGroups.strGroup                           = 'Group';
parametersGroups.strGroups                          = 'Groups';

parametersGroups.strShortControls                   = 'CONT';

parametersGroups.strShortSchizophrenia              = 'SCHI';
parametersGroups.strShortBipolar                    = 'BIPO';
parametersGroups.strShortAdhd                       = 'ADHD';
parametersGroups.strShortMajorDepression            = 'DEPR';


parametersGroups.strShortRelativesSchizophrenia     = 'RELS';


parametersGroups.strShortAll                        = 'ALL';



parametersGroups.strControls                        = 'Controls';

parametersGroups.strSchizophrenia                   = 'Schizophrenia';
parametersGroups.strBipolar                         = 'Bipolar Disorder';
parametersGroups.strMajorDepression                 = 'Major Depressive Disorder';
parametersGroups.strAdhd                            = 'Attention Deficit Hyperactivity Disorder';

parametersGroups.strRelativesSchizophrenia          = 'Relatives - Schizophrenia';


parametersGroups.strAllSubjects                     = 'All subjects';


parametersGroups.strColorControls                   = 'White';
parametersGroups.strColorSchizophrenia              = 'Red';
parametersGroups.strColorBipolar                    = 'Green';
parametersGroups.strColorMajorDepression            = 'Blue';
parametersGroups.strColorAdhd                       = 'Yellow';
parametersGroups.strColorRelativesSchizophrenia     = 'Black';


parametersGroups.aStrShortGroups = {
    parametersGroups.strShortControls
    %parametersGroups.strShortSchizophrenia             
    %parametersGroups.strShortBipolar
    parametersGroups.strShortMajorDepression
    %parametersGroups.strShortAdhd
    %parametersGroups.strShortRelativesSchizophrenia
    };


parametersGroups.aStrLongGroups = {
    parametersGroups.strControls
    %parametersGroups.strSchizophrenia             
    %parametersGroups.strBipolar
    parametersGroups.strMajorDepression
    %parametersGroups.strAdhd
    %parametersGroups.strRelativesSchizophrenia
    };

parametersGroups.aStrColorGroups = {
    parametersGroups.strColorControls
    %parametersGroups.strColorSchizophrenia
    %parametersGroups.strColorBipolar
    parametersGroups.strColorMajorDepression
    %parametersGroups.strColorAdhd
    %parametersGroups.strColorRelativesSchizophrenia
    };


parametersGroups.nGroups = numel(parametersGroups.aStrLongGroups);

end