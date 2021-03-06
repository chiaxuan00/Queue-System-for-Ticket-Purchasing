function y = printTable2(x)
    y = x;
    row = size(x,2); 
    
    disp('+------------------------------------------------------------------------------------------------------------------------------------------+');
    disp('|   n  | RN for Service Time | Service Time | Time Service Begins | Time Service Ends | Waiting Time | Time Spent in the System | Queue No |');
    disp('+------------------------------------------------------------------------------------------------------------------------------------------+');
    for(i = 1:row)
        printf('| %3.0f  |        %4.0f         |     %3.0f      |         %3.0f         |        %3.0f        |     %3.0f      |           %3.0f            |   %d   |\n', y(1,i), y(2,i), y(3,i), y(4,i), y(5,i), y(6,i), y(7,i), y(8,i));
    end
    disp('+------------------------------------------------------------------------------------------------------------------------------------------+');
    