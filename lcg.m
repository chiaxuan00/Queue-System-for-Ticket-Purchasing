function y = lcg(x, a, c, n) 
    A=[];
    for (i=1:n)
        op = ceil(mod((a*x + c), 10000) + 1);
        A(i) = op;
        x = op;
    end;
  	y = A;