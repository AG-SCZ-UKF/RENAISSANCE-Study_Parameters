function readEventRelatedAveragingDataFilesATWM1_TEST()

clear all
clc

strPath = 'D:\Daten\ATWM1\Multi_Subject_Data\ATWM1_LOC_MRI';
strDataFile = 'right_SFG_LOC_POS_&_TARG.dat';
strDataFile = 'left_SFG_LOC_POS_&_TARG.dat';

strPathDataFile = fullfile(strPath, strDataFile);



structCurveData = readEventRelatedAveragingDataFilesATWM1(strPathDataFile);

strAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';


strPathExcel = 'D:\Daten\ATWM1\Multi_Subject_Data\ATWM1_LOC_MRI\Excel_TEST';
if ~exist(strPathExcel, 'dir')
    mkdir(strPathExcel);
end

strExcelTemplate = 'LOC_TEMPLATE.xlsx';
strPathExcelTemplate = fullfile(strPathExcel, strExcelTemplate);

%%% Write curve data into excel file
for c = 1:structCurveData.totalNrOfCurves
    strSheet = 'TEST';
    strRow = strAlphabet(c);
    
    data = structCurveData.curve(c).strCurveName;
    aStrIndexCellTitle{c} = sprintf('%s%i', strRow, 1);
    xlswrite(strPathExcelTemplate, cellstr(data), strSheet, aStrIndexCellTitle{c})
    
    data = structCurveData.curve(c).dataPoint(:);
    aStrIndexCellData{c} = sprintf('%s%i', strRow, 2);
    xlswrite(strPathExcelTemplate, data, strSheet, aStrIndexCellData{c})
end

%%% Modify excel sheet
e=actxserver('excel.application');
eW=e.Workbooks;

eF=eW.Open(strPathExcelTemplate); 
eS=eF.ActiveSheet;
% edit sheet
eS.Range(sprintf('%s:%s', aStrIndexCellTitle{1}, aStrIndexCellTitle{end})).EntireColumn.AutoFit;
eS.Range(sprintf('%s:%s', aStrIndexCellTitle{1}, aStrIndexCellTitle{end})).EntireRow.Font.Bold=1;
eF.Save;
eF.Close; % close the file
e.Quit; % close Excel entirely


end


function structCurveData = readEventRelatedAveragingDataFilesATWM1(strPathDataFile)



parametersEventRelatedAveraging = parametersEventRelatedAveragingATWM1;






fid = fopen(strPathDataFile);

% Extract number of graphs / curves
for c = 1:3
    strLine = fgetl(fid);
end
% NrOfCurves:          12
text = textscan(strLine, '%*s %s %*[^\n]');
text = text{1};
text = text{1};
structCurveData.totalNrOfCurves = str2double(text);

% Extract error bar property
for c = 1:2
    strLine = fgetl(fid);
end
% StdDevErrs:          1
text = textscan(strLine, '%*s %s %*[^\n]');
text = text{1};
text = text{1};
structCurveData.errorBar = str2double(text);


nrOfCurves = 0;
while ~feof(fid)
    strLine = fgetl(fid);
    
    % CurveName:           "Curve 1: DefaultTrial_Pos1_Stimulus"
    if contains(strLine, parametersEventRelatedAveraging.strCurveName)
        nrOfCurves = nrOfCurves + 1;
        bCurveDataRead = false;
        text = textscan(strLine, '%*s %*s %*s %s %*[^\n]');
        text = text{1};
        text = text{1};
        structCurveData.curve(nrOfCurves).strCurveName = strrep(text, '"', '');
    end
    
    % NrOfCurveDataPoints: 12
    if contains(strLine, parametersEventRelatedAveraging.strNrOfCurveDataPoints)
        text = textscan(strLine, '%*s %s %*[^\n]');
        text = text{1};
        text = text{1};
        structCurveData.curve(nrOfCurves).nrOfCurveDataPoints = str2double(text);
    end
    
    % NrOfSegIntervals:    3
    if contains(strLine, parametersEventRelatedAveraging.strNrOfSegIntervals)
        text = textscan(strLine, '%*s %s %*[^\n]');
        text = text{1};
        text = text{1};
        structCurveData.curve(nrOfCurves).nrOfSegIntervals = str2double(text);
    end
    
    % <data>
    if contains(strLine, parametersEventRelatedAveraging.strData) && ~bCurveDataRead
        
        % -0.0145412         0.0140705
        for cdp = 1:structCurveData.curve(nrOfCurves).nrOfCurveDataPoints
            strLine = fgetl(fid);
            text = textscan(strLine, '%s %s %*[^\n]');
            
            % data points
            value = text{1};
            value = value{1};
            structCurveData.curve(nrOfCurves).dataPoint(cdp)  = str2double(value);

            % error values
            value = text{2};
            value = value{1};
            structCurveData.curve(nrOfCurves).errorValue(cdp) = str2double(value);
        end
        bCurveDataRead = true;
    end
end
fclose(fid);


end