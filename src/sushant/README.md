Details:
--------
Name : Sushant S
Roll No. : 2019AAPS1031G

Submission Details:
-------------------
Package Name : sushant

Files Location:
---------------
Executable Python Files are stored in the scripts directory
Service definitions are stored in the srv directory

Services:
---------
There are three services:
Calculate.srv - This service handles calculative functions involving two operands
Calculate2.srv - This service handles calculative functions involving one operand
Bonus.srv - This service is made for the bonus question which calls one of the above services based on the input

Files:
------
For question 1, the files required are calculate_server.py and calculate_client.py which are the server and client for the question.

For the bonus question files required are bonus_server.py, bonus_client.py, calculate_client.py and calculate2_client.py

To run the bonus question, first run bonus_server.py and the bonus_client.py with the argument (i.e 1 or 2). 
If the argument entered is 1, the calculate service will be called. Now to enter arguments, use the calculate_client.py code to pass arguments. Likewise, if the argument passed is 2, the calculate2 service will be called. Now to enter arguments, use the calculate2_client.py code to pass arguments.