function y = rnd(n)
    y = [];
    r = 0;
    for(i = 1:n)
        r = rand(1);
        if r > 0
            y = [y,ceil(r * 10000)];
        else
            y = [y,ceil(0.0001 * 10000)];
        end;
    end;
    
    
    