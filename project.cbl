      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 clients.
           03 client-len pic 99 VALUE 30.
           03 client OCCURS 1 to 30 DEPENDING on client-len INDEXED by
                                                           client-index.
               05 client-id pic 9(9).
               05 clint-name pic x(15).
               05 cnt-visit pic 9 VALUE 0.
               05 biuah-type pic x.
                   88 basic  value 'B'.
                   88 GOLD  value 'Z'.
                   88 siudi  value 'S'.
                   88 my-macabi  value 'L'.
               05 status-card pic x.
                   88 C-open VALUE 'O'.
                   88 C-close VALUE 'C'.
               05 country pic 9.
                   88 Israel value 1.
                   88 USA VALUE 2.
                   88 France VALUE 3.
                   88 Englend VALUE 4.
       01 doctors.
           03 doctor-len pic 99 value 20.
           03 doctor OCCURS 1 to 30 DEPENDING on doctor-len INDEXED by
                                                           doctor-index.
               05 doctor-id pic 9(9).
               05 doctor-name pic x(15).
               05 doctor-lenaguge pic x(10).
               05 visit-cost pic 9(4).
               05 spesific pic x(15).
               05 accept-days OCCURS 6 pic 9.
                   88 accept-yes VALUE 1.
                   88 accept-no VALUE 0.
               05 ezor pic 9.
                   88 center-I VALUE 1.
                   88 nourth-I VALUE 2.
                   88 sourth-I VALUE 3.
                   88 j-m-I VALUE 4.
                   88 shfela-I VALUE 5.
       01 jan-log OCCURS 31 indexed by log-index.
           03 day-in-week pic 9.
           03 v-line-index pic 99 value 1.
           03 daly-log occurs 20 indexed by daly-log-index.
               05 v-client-id pic 9(9).
               05 v-doctor-id pic 9(9).
               05 sicum-bikur pic x(100).

       01 number-input pic 9 VALUE 0.
       01 spec pic x(15).
       01 current-ezor pic 9.
       01 dayInWeek pic 9.
       01 current-cust-id pic 9(9).
       01 current-cust-index pic 99.
       01 dates OCCURS 3 indexed by date-index .
           03 date1 pic 99.
           03 doctor-index1 pic 99.
       01 cnt-basic pic 999 VALUE 0.
       01 cnt-myMacabi pic 999 value 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           perform identity
            DISPLAY "Hello world"
            STOP RUN.
      *****************************************************
       identity section.
           display "enter id"
           accept current-cust-id
           set client-index to 1
           search client
               when client-id(client-index)=current-cust-id
                   move client-index to current-cust-index
           END-SEARCH
               .
       identity-exit. exit.
      ****************************************************
       loop section.
           perform until number-input = 99
             display "what do you want today?"
             display "press 1 for make an appointment by scope and day"
             display "press 2 for make an appointment by scope and ezor"
             display "press 3 for know wich appointment do you have"
             display "press 4 for make sure "
                            DISPLAY "that you dont have any appointment"
             display "press 5 for open your card"
             display "press 6 for update bituah-type"
             display "press 7 for Medical consultation"
            display "press 8 for display the dates withou appointmentts"
             display "press 9 for chek statistics " WITH no ADVANCING
             display "between basic  and my-macabi clients"
             display "press 99 to exit"
             accept number-input
             EVALUATE number-input
                   when 1
                       perform router1
                   when 2
                       perform router2
                   when 3
                       perform router3
                   when 4
                       perform router4
                   when 5
                       perform router5
                   when 6
                       perform router6
                   when 7
                       perform router7
                   when 8
                       perform router8
                   when 9
                       perform router9
             END-EVALUATE
           END-PERFORM
           .
       loop-exit. exit.
      ****************************************************
       router1 section.


       router1-exit. exit.

       END PROGRAM YOUR-PROGRAM-NAME.
