#!/usr/bin/env python

import rospy
from math import log, factorial, sqrt, sin, cos, tan
from sushant.srv import Bonus, BonusResponse, BonusRequest
from sushant.srv import Calculate, CalculateRequest, CalculateResponse
from sushant.srv import Calculate2, Calculate2Request, Calculate2Response

flag = 0
def handler_bonus(req):
    global flag
    n = req.arg
    if n == 1:
        flag = 1
        try:
            calculate2_server()

        except Exception as e:
            print('%s exception was thrown'%e)

    elif n==2:
        flag = 2
        try:
            calculate_server()

        except Exception as e:
            print('%s exception was thrown'%e)
    return BonusResponse(flag)
    

def handler_calculate(req):
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

def handler_calculate2(req):
    num1 = req.a
    str1 = req.op
    
    try:
        if str1 == 'sqrt':
            print('Returning %s(%s) = %s'%(str1,num1,sqrt(num1)))
            return Calculate2Response(sqrt(num1))
        
        elif str1 == 'factorial':
            print('Returning %s! = %s'%(num1,factorial(num1)))
            return Calculate2Response(factorial(num1))
        
        elif str1 == 'log':
            print('Returning %s(%s) = %s'%(str1,num1,log(num1)))
            return Calculate2Response(log(num1))
        
        elif str1 == 'sin':
            print('Returning %s(%s) = %s'%(str1,num1,sin(num1)))
            return Calculate2Response(sin(num1))

        elif str1 == 'cos':
            print('Returning %s(%s) = %s'%(str1,num1,cos(num1)))
            return Calculate2Response(cos(num1))
        
        elif str1 == 'tan':
            print('Returning %s(%s) = %s'%(str1,num1,tan(num1)))
            return Calculate2Response(tan(num1))

        else:
            return Calculate2Response('Undefined')
    
    except Exception:
        print('Undefined!')


def calculate_server():
    service2 = rospy.Service('calculate', Calculate, handler_calculate)
    print('Initializing Calculator service with two arguments......................Done!')
    print('Enter two floats and an operation among the following: ')
    print('add')
    print('subtract')
    print('multiply')
    print('divide')
    print('modulo')
    print('power')
    rospy.spin() 

def calculate2_server():
    service3 = rospy.Service('calculate2', Calculate2, handler_calculate2)
    print('Initializing Calculator service with one argument......................Done!')
    print('Enter one floats and an operation among the following: ')
    print('sqrt')
    print('factorial')
    print('log')
    print('sin')
    print('cos')
    print('tan')
    rospy.spin()

def start_server():
    try:
        rospy.init_node('bonus_server')
        service = rospy.Service('bonus', Bonus, handler_bonus)
        print('Initializing server.......Done!')
        print('Enter either 1 or 2, based on the number of arguments ')
        rospy.spin()
    except Exception as e:
        print('%s error was thrown'%e)

if __name__ == "__main__":
    try:
        start_server()

    except Exception as e:
        print('%s exception was thrown'%e)