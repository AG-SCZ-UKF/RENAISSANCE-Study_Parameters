function parametersBarcode = parametersBarcodeATWM1()

global iStudy

parametersBarcode.strBarcode            = 'Barcodes';
parametersBarcode.factorSizeDoubling    = 4;
parametersBarcode.formatImageFile       = 'png';
parametersBarcode.fontSize              = 14;

parametersBarcode.extPdf                = '.pdf';
parametersBarcode.lengthBarcode         = 7;
parametersBarcode.lengthBarcodeFileName = parametersBarcode.lengthBarcode + length(iStudy) + length(parametersBarcode.strBarcode) + length(parametersBarcode.extPdf) + 2;


end