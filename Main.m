function y = Main();
   
    A = [];
    
    printf('Ticket type 1: Rockzone Tickets\nTicket type 2: Numbered Seating Tickets\nTicket type 3: Free Seating Tickets\n');
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                 Table of Service Time for Ticket Type 1                 |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|   Service time  |   Probability   |     CDF     |         Range         |');
    disp(      '+-------------------------------------------------------------------------+');
    ticServiceTimeProb1 = [2,3,4,5
                           0.20,0.30,0.30,0.20];
    printTable1(ticServiceTimeProb1);
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                 Table of Service Time for Ticket Type 2                 |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|   Service time  |   Probability   |     CDF     |         Range         |');
    disp(      '+-------------------------------------------------------------------------+');
    ticServiceTimeProb2 = [4,5,6,7
                           0.15,0.25,0.25,0.35];        
    printTable1(ticServiceTimeProb2);
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                 Table of Service Time for Ticket Type 3                 |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|   Service time  |   Probability   |     CDF     |         Range         |');
    disp(      '+-------------------------------------------------------------------------+');
    ticServiceTimeProb3 = [1,2,3,4
                           0.15,0.35,0.35,0.15];
    printTable1(ticServiceTimeProb3);
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                      Table of Inter-arrival Time                        |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|  Inter arrival  |   Probability   |     CDF     |         Range         |');
    disp(      '|      time       |                 |             |                       |');
    disp(      '+-------------------------------------------------------------------------+');
    interArrTimeProb = [1,2,3,6
                    0.30,0.35,0.20,0.15];
    printTable1(interArrTimeProb);
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                        Table of Ticket Slot/Day                         |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|     Ticket      |   Probability   |     CDF     |         Range         |');
    disp(      '|    slot/day     |                 |             |                       |');
    disp(      '+-------------------------------------------------------------------------+');
    ticSlotProb = [1,2,3
               0.35,0.30,0.35];
    printTable1(ticSlotProb);    
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                          Table of Ticket Type                           |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|   Ticket type   |   Probability   |     CDF     |         Range         |');
    disp(      '+-------------------------------------------------------------------------+');
    ticTypeProb = [1,2,3
               0.45,0.25,0.30];
    printTable1(ticTypeProb);
  
    %Specifying total number of tickets for each ticket type
       ticDet = [1,2,3
                3000,3000,3000
               2500,2500,2500
               1500,1500,1500];           
    pause
    
    printf('\n');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                       Table of Tickets Information                      |');
    disp(      '+-------------------------------------------------------------------------+');
    disp(      '|                   |      Total      |      Total      |      Total      |');
    disp(      '|      Day/slot     |      ticket     |      ticket     |      ticket     |');
    disp(      '|                   |      type 1     |      type 2     |      type 3     |');
    disp(      '+-------------------------------------------------------------------------+');
    for(i = 1:3)
        printf('|         %d         |       %4.0f      |       %4.0f      |       %4.0f      |\n', ticDet(1,i), ticDet(2,i), ticDet(3,i), ticDet(4,i));
    end
    disp(      '+-------------------------------------------------------------------------+');
    
    ticPurchasedProb = [1,2,3,4,5,6
                        0.10,0.40,0.10,0.10,0.05,0.25];
    pause
    

    %getting input from user (with validation) 
    printf('Ticket type 1: Rockzone Tickets\nTicket type 2: Numbered Seating Tickets\nTicket type 3: Free Seating Tickets\n\n');
    custNum = input('Please input the number of customer:');
    printf('\nType of random number generator:\n');
    printf('1. Linear Congruential Generator (LCG)\n');
    printf('2. Random Variate Generator for Exponential Distribution\n');
    printf('3. Random Variate Generator for Uniform Distribution\n');
    printf('4. Freemat built-in rand() function\n');
    
    while true
        mode1 = input('Please choose the type of random number generator for number of ticket purchased: ');
        if mode1 == 1 | mode1 == 2 | mode1 == 3 | mode1 == 4
            ticPurchased = getFromRange(ticPurchasedProb,mode1,custNum);
            break;
        else
            disp('Invalid input! Try again.');
        end;
    end;    
    
    while true
        mode2 = input('Please choose the type of random number generator for inter-arrival time: ');
        if mode2 == 1 | mode2 == 2 | mode2 == 3 | mode2 == 4
            interArrTime = getFromRange(interArrTimeProb,mode2,custNum);
            arrivalTime = getArrivalTime(interArrTime);
            break;
        else
            disp('Invalid input! Try again.');
        end;
    end;   
    
    while true
        mode3 = input('Please choose the type of random number generator for ticket slot/day: ');
        if mode3 == 1 | mode3 == 2 | mode3 == 3 | mode3 == 4
            ticSlot = getFromRange(ticSlotProb,mode3,custNum);
            break;
        else
            disp('Invalid input! Try again.');
        end;
    end;   
    
    while true
        mode4 = input('Please choose the type of random number generator for ticket type: ');
        if mode4 == 1 | mode4 == 2 | mode4 == 3 | mode4 == 4
            ticType = getFromRange(ticTypeProb,mode4,custNum);
            queueNo = getQueueNo(ticType);
            break;
        else
            disp('Invalid input! Try again.');
        end;
    end;   
    
    while true
        mode5 = input('Please choose the type of random number generator for service time: ');
        if mode5 == 1 | mode5 == 2 | mode5 == 3 | mode5 == 4
            break;
        else
            disp('Invalid input! Try again.');
        end;
    end;   
    
    while true
        threshold1 = input('Please set the threshold to open a new counter for ticket type 1(minimum 3): ');
        if threshold1 >= 3
            break;
        else
            disp('Invalid input! Try again.')
        end;
    end;

    while true
        threshold2 = input('Please set the threshold to open a new counter for ticket type 2(minimum 3): ');
        if threshold2 >= 3
            break;
        else
            disp('Invalid input! Try again.')
        end;
    end;

    while true
        threshold3 = input('Please set the threshold to open a new counter for ticket type 3(minimum 3): ');
        if threshold3 >= 3
            break;
        else
            disp('Invalid input! Try again.')
        end;
    end;    
    
    printf('\n\nSimulation start..... \n');
    printf('Simulation logs: \n');
    serviceTime = [];
    for(i = 1:custNum)
        A = [];
        if(ticType(2,i) == 1)
            A = getFromRange(ticServiceTimeProb1,mode5,custNum);
        elseif(ticType(2,i) == 2)
            A = getFromRange(ticServiceTimeProb2,mode5,custNum);
        elseif(ticType(2,i) == 3)
            A = getFromRange(ticServiceTimeProb3,mode5,custNum);
        end;
        serviceTime(1:2,i) = A(1:2,i);
    end;
    
    time = -1;
    no = 1;
    type = [];
    ticSoldDet = ticDet;  %stores the ticDet after ticket sold
    counter3Open = -1;
    counter5Open = -1;
    counter7Open = -1;
    waitingList = [];
    waitingType1 = [];
    waitingType2 = [];
    waitingType3 = [];
    list = [];
    tempNo = 0;
    count = 1;
    ticCount = 0;
    
    printf('Counter 1,2,4,6 are operating.\n');
    while(true)
        time = time + 1;
        
        if (time == arrivalTime(no))  %if got customer arrive at this minute, add to list
            printf('Arrival of customer %d at minute %d and %d tickets were purchased.\n', no, time, ticPurchased(2,no));
            type(no) = floor(queueNo(no)/1000);  %check the ticket type the customer buy using queueNo
            waitingList = [waitingList,queueNo(no)];  %add to waiting list
            %distribute to different waitingList according to ticket type
            if (type(no) == 1)
                waitingType1 = [waitingType1,no];
            elseif (type(no) == 2)
                waitingType2 = [waitingType2,no];
            elseif (type(no) == 3)
                waitingType3 = [waitingType3,no];
            end;
            
            if(ticSoldDet(type(no)+1,ticSlot(2,no)) ~= 0) 
            ticCount = 0;
                for(i = 1:ticPurchased(2,no))
                    if(ticSoldDet(type(no)+1,ticSlot(2,no)) > 0)
                        ticSoldDet(type(no)+1,ticSlot(2,no)) = ticSoldDet(type(no)+1,ticSlot(2,no)) - 1;
                        ticCount = ticCount + 1;
                    else
                        printf('Ticket sold out. %d ticket is purchased instead of %d ticket for customer %d. \n', ticCount, ticPurchased(2,no), no);
                        ticPurchased(2,no) = ticCount;
                        break;
                    end;
                end;
            else
                printf('Ticket sold out. 0 ticket is purchased instead of %d ticket for customer %d. \n', ticPurchased(2,no), no);
                serviceTime(2,no) = 0;
                ticPurchased(2,no) = 0;
            end;
            
            totalAmountPaid = getTotalAmountPaid(ticPurchased,ticType);
                
            if((ticSoldDet(type(no)+1,ticSlot(2,no)) <= ticDet(type(no)+1,ticSlot(2,no)) / 3) && ticSoldDet(type(no)+1,ticSlot(2,no)) ~= 0)  %if the ticket remaining now is less than 1/3 of original ticket amount
                printf('Ticket type %d is selling fast. \n', type(no)+1);
            end;
            
            if(no ~= custNum)  %no++ only when all customer not yet arrived
                no = no + 1;  %no is customer no.
            end;
        end;
        
        if(isempty(waitingList) == 1)  %no customer waiting at all, just skip this minute
            continue;
        end;
        
        
        if(isempty(waitingType1) == 0)  %if not empty
            count = 1;
            if(size(waitingType1,2) >= threshold1)  %if the number of customer waiting more than and equal to threshold1, opens counter 3.
                counter3Open = 1;
                printf('Counter 3 started operation at minute %d.\n', time);
            elseif(size(waitingType1,2) <= 2)  %if less than and equal to 2 customer waiting only, closes counter 3.
                if(counter3Open == 1)  %show this text only if counter 3 close from open.
                    printf('Counter 3 stopped operation at minute %d.\n', time);
                end;
                counter3Open = -1;
            end;
            
            if(counter3Open == 1)
                counterNum = 3;
            else
                counterNum = 2;
            end;
             
            for(i = 1:size(waitingType1,2))  %loop through the waiting list and find if anyone can go start service
                if(isempty(waitingType1) == 0) %if not empty after deletion
                    tempNo = waitingType1(count);  %get the customer no.
                    for(c = 1:counterNum)  %loop through all the counters
                        if(getLastEndTime(c,list) <= time)  %if that counter is empty in this minute, start service and add to list
                            list = [list, addToList(tempNo,c,arrivalTime(tempNo),serviceTime(2,tempNo),time,ticPurchased(2,tempNo))];
                            printf('Service for customer %d started at minute %d at counter %d.\n',waitingType1(count), time, c);  
                            waitingType1(1) = [];  %delete the customer from waiting list
                            count = count - 1;
                            break;  %no need this find counter loop if find counter already
                        end;
                    end;
                end;
                count = count + 1;
            end;
        end;
        
        
        if(isempty(waitingType2) == 0)  %if not empty
            count = 1;
            if(size(waitingType2,2) >= threshold2)  %if the number of customer waiting more than and equal to threshold2, opens counter 5.
                counter5Open = 1;
                printf('Counter 5 started operation at minute %d.\n', time);
            elseif(size(waitingType2,2) <= 2)  %if less than and equal to 2 customer waiting only, closes counter 5.
                if(counter5Open == 1)  %show this text only if counter 5 close from open.
                    printf('Counter 5 stopped operation at minute %d.\n', time);
                end;
                counter5Open = -1;
            end;
            
            if(counter5Open == 1)
                counterNum = 2;
            else
                counterNum = 1;
            end;
             
            for(i = 1:size(waitingType2,2))  %loop through the waiting list and find if anyone can go start service
                if(isempty(waitingType2) == 0) %if not empty after deletion
                    tempNo = waitingType2(count);  %get the customer no.
                    for(c = 4:counterNum+3)  %loop through all the counters
                        if getLastEndTime(c,list) <= time  %if that counter is empty in this minute, start service and add to list
                            list = [list, addToList(tempNo,c,arrivalTime(tempNo),serviceTime(2,tempNo),time,ticPurchased(2,tempNo))];
                            printf('Service for customer %d started at minute %d at counter %d.\n',waitingType2(count), time, c); 
                            waitingType2(1) = [];  %delete the customer from waiting list
                            count = count - 1;
                            break;  %no need this find counter loop if find counter already
                        end;
                    end;
                end;
                count = count + 1;
            end;
        end;
        
        
        if(isempty(waitingType3) == 0)  %if not empty
            count = 1;
            if(size(waitingType3,2) >= threshold3)  %if the number of customer waiting more than and equal to threshold3, opens counter 7.
                counter7Open = 1;
                printf('Counter 3 started operation at minute %d.\n', time);
            elseif size(waitingType3,2) <= 2  %if less than and equal to 2 customer waiting only, closes counter 7.
                if(counter7Open == 1)    %show this text only if counter 7 close from open.
                    printf('Counter 3 stopped operation at minute %d.\n', time);
                end;
                counter7Open = -1;
            end;
            
            if(counter7Open == 1)
                counterNum = 2;
            else
                counterNum = 1;
            end;
             
            for(i = 1:size(waitingType3,2))  %loop through the waiting list and find if anyone can go start service
                if(isempty(waitingType3) == 0) %if not empty after deletion
                    tempNo = waitingType3(count);  %get the customer no.
                    for(c = 6:counterNum+5)  %loop through all the counters
                        if getLastEndTime(c,list) <= time  %if that counter is empty in this minute, start service and add to list
                            list = [list, addToList(tempNo,c,arrivalTime(tempNo),serviceTime(2,tempNo),time,ticPurchased(2,tempNo))];
                            printf('Service for customer %d started at minute %d at counter %d.\n',waitingType3(count), time, c); 
                            waitingType3(1) = [];  %delete the customer from waiting list
                            count = count - 1;
                            break;  %no need this find counter loop if find counter already
                        end;
                    end;
                end;
                count = count + 1;
            end;
        end;
        
        
        for(i = 1:size(list,2))  %loop through the list, find if any endTime is equal to this minute
            if(list(5,i) == time)
                printf('Departure of the customer %d at minute %d.\n', list(1,i), time); 
            end;
        end;
        
        if(size(list,2) == custNum)  %all cust already arrived and add to list
            if(time >= list(5,custNum))  %this minute equals to last customer end time, end the simulation
                printf('\nSimulation ends.....\nTotal time for simulation: %d, meaning that it takes about %.2f hours for %d people.\n', time, time/60, custNum);
                printf('Press enter to continue viewing more details.\n');
                pause
                break;
            end
        end;
            
    end;
    
    [temp,idx] = sort(list(1,:));  %sort the list according to its first row(which is customer no.)
    list = list(:,idx);

    %PRINT ALL RESULT TABLES
    result = [list(1,:);interArrTime;arrivalTime;ticSlot;ticType;ticPurchased(2,:);totalAmountPaid];

    printf('\n');
    disp(      '+-------------------------------------------------------------------------------------------------------------------------------------------------+');
    disp(      '|   n  |       RN for       | Inter-arrival | Arrival |      RN for     |  Ticket  |    RN for   | Ticket |     Number of     | Total Amount Paid |');
    disp(      '|      | Inter-arrival Time |      Time     |   Time  | Ticket Slot/Day | Slot/Day | Ticket Type |  Type  | Tickets Purchased |                   |');
    disp(      '+-------------------------------------------------------------------------------------------------------------------------------------------------+');
    for(i = 1:custNum)
        printf('| %3.0f  |        %4.0f        |      %2.0f       |   %2.0f    |       %4.0f      |     %d    |     %4.0f    |    %d   |        %d          |        %4.0f       |\n',result(1,i),result(2,i),result(3,i),result(4,i),result(5,i),result(6,i),result(7,i),result(8,i),result(9,i),result(10,i));
    end
    disp(      '+-------------------------------------------------------------------------------------------------------------------------------------------------+');
    pause
    
    
    totalCounterNum = 7;  %7 counters
    for(i = 1:totalCounterNum) 
        if(isempty(getCounterDet(i,list,serviceTime,queueNo)) == 0)  %if the counter not empty, print the counter's table
            printf('\nCounter %d: \n', i);
            printTable2(getCounterDet(i,list,serviceTime,queueNo));  
            getCounterAve(i,list);  
            pause
        end;
    end;
    
    totalList = [list(1:2,:);arrivalTime;list(3:7,:);ticType(2,:);ticPurchased(2,:);totalAmountPaid;queueNo];
    
    printf('\n');
    disp(      '+------------------------------------------------------------------------------------------------------------------------------------+');
    disp(      '|   n  | Counter | Arrival | Start | Service | End  | Waiting | Time Spent in | Ticket | Number of Tickets | Total Amount | Queue No |');
    disp(      '|      |         | Time    | Time  | Time    | Time | Time    | the System    | Type   | Purchased         | Paid         |          |');
    disp(      '+------------------------------------------------------------------------------------------------------------------------------------+');
    for(i = 1:custNum)
        printf('| %3.0f  |    %d    |   %3.0f   |  %3.0f  |   %3.0f   | %3.0f  |   %2.0f    |      %3.0f      |   %d    |         %d         |     %4.0f     |   %d   |\n',totalList(1,i),totalList(2,i),totalList(3,i),totalList(4,i),totalList(5,i),totalList(6,i),totalList(7,i),totalList(8,i),totalList(9,i),totalList(10,i),totalList(11,i),totalList(12,i));
    end
    disp(      '+------------------------------------------------------------------------------------------------------------------------------------+');
    pause
    
    
    
    
    totalDayNum = 3;  %3 days
    totalTicTypeNum = 3;  %3 ticket types
    printf('\n');
    disp(      '+----------------------------------------------------------+');
    disp(      '|          |          Number of Remaining Ticket           |');
    disp(      '+ Day/Slot |-----------------------------------------------+');
    disp(      '|          | Ticket Type 1 | Ticket Type 2 | Ticket Type 3 |');
    disp(      '+----------------------------------------------------------+');
    for(i = 1:totalDayNum)
        printf('|    %d     |      %3.0f     |      %3.0f     |     %3.0f      |\n',ticSoldDet(1,i),ticSoldDet(2,i),ticSoldDet(3,i),ticSoldDet(4,i));
    end
    disp(      '+----------------------------------------------------------+');
    for(i = 1:totalTicTypeNum) 
        printf('Total type %d ticket sold = %d\n', i, sum(ticDet,2)(i+1,1) - sum(ticSoldDet,2)(i+1,1));
    end;
    printf('Total tickets sold = %d\n', sum(list,2)(8,1));
    pause
    
    printf('\n\nResults of the simulation--------------------------------------------\n\n');
    aveInterArr = sum(interArrTime,2)(2,1) / custNum;
    printf('Average inter-arrival time = %d/%d = %.4f\n', sum(interArrTime,2)(2,1), custNum, aveInterArr);
    
    aveArr = sum(arrivalTime,2) / custNum;
    printf('Average arrival time = %d/%d = %.4f\n', sum(arrivalTime,2), custNum, aveArr);
    
    aveSerTimeTTL = sum(list,2)(4,1) / custNum;
    printf('Average service time for all counter = %d/%d = %.4f\n', sum(list,2)(4,1), custNum, aveSerTimeTTL);
    
    aveSysTimeTTL = sum(list,2)(7,1) / custNum;
    printf('Average time a customer spend in the system for all counter = %d/%d = %.4f\n', sum(list,2)(7,1), custNum, aveSysTimeTTL);
    
    aveWaiting = sum(list,2)(6,1) / custNum;
    printf('Average waiting time in the queue = %d/%d = %.4f\n', sum(list,2)(6,1), custNum, aveWaiting);
    
    
    queued = 0;
    for(i = 1:custNum)
        if(list(6,i) ~= 0)
            queued = queued + 1;
        end;
    end;
    probQueue = queued / custNum;
    printf('Probability that a customer has to wait in the queue = %d/%d = %.4f\n', queued, custNum, probQueue);
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    