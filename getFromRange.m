function y = getFromRange(x,mode,n)
    
    RN = [];
    RN = generateRN(mode,n);
    A = tableData(x);
    row = size(x,2);
    B = [];
    
    for(i = 1:n)
        for(j = 1:row)
            if(RN(i) >= A(4,j) && RN(i) <= A(5,j))
                B(i) = A(1,j);
                break;
            end;
        end;
    end;
    
    y = [RN;B];
    