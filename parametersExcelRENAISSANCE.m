function parametersExcel = parametersExcelATWM1()

parametersExcel.strAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
parametersExcel.nrOfLetters = numel(parametersExcel.strAlphabet);

parametersExcel.aStrRowSingle   = cellstr(parametersExcel.strAlphabet(:));
 

parametersExcel.aStrRowIndex    = parametersExcel.aStrRowSingle;

%{
te = parametersExcel.aStrRow1

newTest = [parametersExcel.aStrRow1 parametersExcel.aStrRow1]
sdkd = [parametersExcel.aStrRow1{1}, parametersExcel.aStrRow1']

newTest = [test test]
newTest = join(newTest)

dsk = strrep(newTest, ' ', '')
%}
end

