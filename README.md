# Queue-System-for-Ticket-Purchasing
TMA1301 - Computational Methods Assignment Trimester 2 2019/2020 👩‍💻

Program written in FreeMat to simulate the queue system for ticket purchasing.

This program simulates the ticket purchasing for a concert. There are three ticket types: rockzone tickets, numbered seating tickets and free seating tickets. 

The simulator begins with displaying the probability tables for service time of each ticket type, inter-arrival time, ticket slot/day, ticket type and tickets information. These probability values were defined in the code beforehand. User can input the number of customers, type of random number generator themselves.

A simulation log of customer arrival and departure times will be displayed with the details of number of tickets purchased on minutes basis. Counter 1,2,3 are for ticket type 1 (rockzone tickets), counter 4,5 are for ticket type 2 (numbered seating tickets) and counter 6,7 are for ticket type 3 (free numbered seating). Operating counters are counter 1,2,4,6 which will not be closed during working hours while additional counters are counter 3,5,7 and will be opened when the thresholds are fulfilled then closed after there no needs for additional counters. Total time of simulation will be calculated in the end.

At the end of simulation, tables showing the details on ticket purchasing based on information of customers, based on different counters for different types of ticket, based on services received by customers and the details of the remaining tickets will be displayed。

## Run the Application

1. Clone this repository
2. Run by typing `Main` in FreeMat.

