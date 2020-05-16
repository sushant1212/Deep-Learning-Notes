#!/usr/bin/env python
import sys
import rospy
from sushant.srv import Calculate

class ArgumentError(Exception):
    def __init__(self,num):
        Exception.__init__(self)
        self.num = num

class SymbolError(Exception):
    def __init__(self,sym):
        Exception.__init__(self)
        self.sym = sym

def calculate_client(x,y,sym):
    rospy.wait_for_service('calculate')
    try:
        calc = rospy.ServiceProxy('calculate',Calculate)
        result = calc(x, y, sym)
        return result.res
    
    except ZeroDivisionError:
        print('Undefined')
    
    except rospy.ServiceException as e:
        print ("Service call failed: %s"%e)
    


if __name__ == '__main__':
    try: 
        if len(sys.argv) == 4:
            x = float(sys.argv[1])
            y = float(sys.argv[2])
            sym = str(sys.argv[3])
            if (sym != 'add' and sym != 'subtract' and sym != 'multiply' and sym != 'divide' and sym != 'modulo' and sym != 'power'):
                raise SymbolError(sym)
            else:
                try:
                    a = calculate_client(x,y,sym)
                    print ("Requesting %s %s %s........Done!"%(x, sym,y))
                    print ("%s %s %s = %s"%(x, sym, y, a ))
                except Exception as e:
                    print('%s error was thrown'%e)
        
        else:
            raise ArgumentError(len(sys.argv)-1)
    except ArgumentError as ex:
        print('%s arguments entered. Please enter 3 arguments: First two floats and third String'%ex.num)
    
    except SymbolError as ex:
        print('%s symbol not found.'%ex.sym)
    
