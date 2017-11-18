function xls_2_sheets_write(filename,A,B)
xlswrite(filename,A,1,'B3')
xlswrite(filename,B,2,'B3')