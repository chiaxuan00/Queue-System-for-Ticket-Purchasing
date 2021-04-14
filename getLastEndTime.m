function y = getLastEndTime(c,list)
    
    y = 0;
    n = size(list,2);
    count = 0;
    
    if(n == 0)
        y = 0;
        
    else
        for(i = n:-1:1)
            if list(2,i) == c
                y = list(5,i);
                break;
            else
                count = count + 1;
            end;
        end;
        
        if(count == n)
            y = 0;
        end;
    end;
    
    