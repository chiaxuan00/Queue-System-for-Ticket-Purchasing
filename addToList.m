function y = addToList(no,c,arrivalTime,serviceTime,time,ticPurchased)
    
     y = [];
    
     counter = c;
     startTime = time;
     endTime = startTime + serviceTime;
     queueTime = time - arrivalTime;
     systemTime = endTime - startTime + queueTime;
   
     
     y = [no;counter;startTime;serviceTime;endTime;queueTime;systemTime;ticPurchased];