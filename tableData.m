function y = tableData(x)
    
    y = x;
    row = size(x,2);
    
    for(i = 1:row)
        if(i == 1)
            y(3,i) = y(2,i);              %calculating cdf
            y(4,i) = 1;                   %set upper range
            y(5,i) = y(3,i) * 10000;      %set bottom range (the value of CDF * 10000)
        else
            y(3,i) = y(2,i) + y(3,i-1);   %calculating CDF (probability + CDF from previous data)
            y(4,i) = y(5,i-1) + 1;            %upper range = bottom range of previous data
            y(5,i) = y(3,i) * 10000;
        end
    end
    
    