function y = getCustNum(x)
    
   custNum = [];
   ticType;
   n = size(x,2);
   
   for(i = 1:n)
       ticType = x(1,i);
       custNum(1,i) = (ticType * 1000) + i;
   end;
   
   y = custNum;
       