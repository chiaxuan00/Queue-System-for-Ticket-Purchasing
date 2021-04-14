function y = ud(n)
    A=[];
    a = 0;
    b = 10000;

    A = (a + (b - a) * rand(1,n));

    A = round(A);
    y = A;