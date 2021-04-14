function y = generateRN(mode,n)
    
    RN = [];
    x = rnd(1);
    a = rnd(1);
    c = rnd(1);
    
    if(mode == 1)
        
        RN = lcg(x,a,c,n);
    
    elseif(mode == 2)
        RN = ed(n);
        
    elseif(mode == 3)
        RN = rnd(n);
        
    elseif(mode == 4)
        RN = ud(n);
    
    end;
    
    y = RN;
        