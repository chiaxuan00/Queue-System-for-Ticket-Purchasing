function y = getCounterAve(counterNum,list,ticSoldDet,ticDet)
    
    count = 0;
    queued = 0;
    
    for(i = 1:size(list,2))
        if(list(2,i) == counterNum)
            count = count + 1;
        end;
    end;

    if(count ~= 0)  %not all not same as this counterNum, so will not empty if delete
        list(:,(list(2,:) ~= counterNum)) = [];  %delete the content that is not same as the counterNum   
    else   %this counter not operating
        break;
    end;
    
    
    
    aveSerTime = sum(list,2)(4,1) / size(list,2);
    printf('Average service time for counter %d = %d/%d = %.4f\n', counterNum, sum(list,2)(4,1), size(list,2), aveSerTime);
    
    aveSysTime = sum(list,2)(7,1) / size(list,2);
    printf('Average time a customer spend in the system for counter %d = %d/%d = %.4f\n', counterNum, sum(list,2)(7,1), size(list,2), aveSysTime); 
    
    aveWaiting = sum(list,2)(6,1) / size(list,2);
    printf('Average waiting time in the queue for counter %d = %d/%d = %.4f\n', counterNum, sum(list,2)(6,1), size(list,2), aveWaiting);
    
    
    for(i = 1:size(list,2))
        if(list(6,i) ~= 0)
            queued = queued + 1;
        end;
    end;
    probQueue = queued / size(list,2);
    printf('Probability that a customer has to wait in the queue for counter %d = %d/%d = %.4f\n', counterNum, queued, size(list,2), probQueue);
    
    printf('Sales for counter %d = %d\n', counterNum, sum(list,2)(8,1));




