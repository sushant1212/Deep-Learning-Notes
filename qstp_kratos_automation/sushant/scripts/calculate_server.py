#!/usr/bin/env python
import rospy
from sushant.srv import Calculate, CalculateResponse

def handle_calculate(req):
    num1 = req.a
    num2 = req.b
    str1 = req.op
    try:
        if str1 == 'add':
            print('Returning %s + %s = %s'%(num1,num2,num1+num2))
            return CalculateResponse(num1 + num2)
        
        elif str1 == 'subtract':
            print('Returning %s - %s = %s'%(num1,num2,num1-num2))
            return CalculateResponse(num1 - num2)
        
        elif str1 == 'multiply':
            print('Returning %s * %s = %s'%(num1,num2,num1*num2))
            return CalculateResponse(num1 * num2)
        
        elif str1 == 'divide':
            print('Returning %s / %s = %s'%(num1,num2,num1/num2))
            return CalculateResponse(num1 / num2)

        elif str1 == 'modulo':
            print('Returning %s modulo %s = %s'%(num1,num2,num1%num2))
            return CalculateResponse(num1 % num2)
        
        elif str1 == 'power':
            print('Returning %s ^ %s = %s'%(num1,num2,num1**num2))
            return CalculateResponse(num1 ** num2)

        else:
            return CalculateResponse('Undefined')
    
    except ZeroDivisionError:
        print('Undefined!')



def start_server():
    rospy.init_node('calculate_server')
    service = rospy.Service('calculate', Calculate, handle_calculate)
    print('Initializing server.......Done!')
    print('Calculator service started. Waiting for inputs.....')
    print('Enter two floats and an operation among the following: ')
    print('add')
    print('subtract')
    print('multiply')
    print('divide')
    print('modulo')
    print('power')
    rospy.spin()

if __name__ == '__main__':
    try:
        start_server()
    except Exception as e:
        print('%s exception was thrown'%e)
