function xls_annotated_array_write(filename,A)
for ii=1:size(A,1)
    row{ii,1}=['Row',num2str(ii),': ';];
end
for jj=1:size(A,2)
    col{1,jj}=['col',num2str(jj),': '];
end
xlswrite(filename,row,'A2:A4')
xlswrite(filename,col,'B1:H1')
xlswrite(filename,A,'B2:H4')
end


    
