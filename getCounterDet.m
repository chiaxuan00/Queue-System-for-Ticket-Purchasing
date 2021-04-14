function y = getCounterDet(counterNum,list,serviceTime,queueNo)
    
    y = [];
    A = [list(1:2,:);serviceTime;list(3,:);list(5:7,:);queueNo];
    count = 0;
    
    
    for(i = 1:size(A,2))
        if(A(2,i) == counterNum)
            count = count + 1;
        end;
    end;
    
    if(count == 0)  %don't have this counter
        y = [];
    else  %not all not this counter number, will not empty if delete
        y = A;
        y(:,(y(2,:) ~= counterNum)) = [];
        y(2,:) = [];  
    end;
    
    
    