function y = getTotalAmountPaid(ticPurchased,ticType)
    
    y = [];
    A = [];
    n = size(ticType,2);
    
    for(i = 1:n)
        if(ticType(2,i) == 1)
            A(i) = 900 * ticPurchased(2,i);
        elseif(ticType(2,i) == 2)
            A(i) = 800 * ticPurchased(2,i);
        elseif(ticType(2,i) == 3)
            A(i) = 450 * ticPurchased(2,i);
        end;

    end;
    
    y = A;