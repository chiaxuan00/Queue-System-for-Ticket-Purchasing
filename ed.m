function y = ed(n)
    A = [];
    r = 0;
        for (i=1:n)
        r = rand(1);
            if(r > 0)
                A = [A,(-1) * log(1-r) * (10000/-log(0.0001))];
            else
                A = [A,(-1) * log(1-0.0001) * (10000/-log(0.0001))];
            end;
        end;
    
    A = ceil(A);
    y = A;