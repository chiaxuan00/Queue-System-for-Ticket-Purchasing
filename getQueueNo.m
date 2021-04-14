function y = getQueueNo(ticType)
    
   queueNo = [];
   n = size(ticType,2);
   ticketType = 3;
   count = 1;
   
   for(c = 1:ticketType)
       for(i = 1:n)
           if(ticType(2,i) == c)
               queueNo(i) = (ticType(2,i) * 1000) + count;
               count = count + 1;
           end;
       end;
       count = 1;
   end;
   
   
   
   
   y = queueNo;
       