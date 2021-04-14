function y = printTable1(x)
    
    y = tableData(x);
    row = size(x,2);  

    for(i = 1:row)
        printf('|       %d         |     %.4f      |   %.4f    |     %4.0f - %5.0f      |\n', y(1,i), y(2,i), y(3,i), y(4,i), y(5,i));
    end
    disp(      '+-------------------------------------------------------------------------+');