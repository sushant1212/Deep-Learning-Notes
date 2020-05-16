#!/usr/bin/env python
import sys
import rospy
from sushant.srv import Calculate2, Calculate2Request, Calculate2Response

class ArgumentError(Exception):
    def __init__(self,num):
        Exception.__init__(self)
        self.num = num

class SymbolError(Exception):
    def __init__(self,sym):
        Exception.__init__(self)
        self.sym = sym

def calculate_client(x,sym):
    rospy.wait_for_service('calculate2')
    try:
        calc = rospy.ServiceProxy('calculate2',Calculate2)
        result = calc(x, sym)
        return result.res
    
    except ZeroDivisionError:
        print('Undefined')
    
    except rospy.ServiceException as e:
        print ("Service call failed: %s"%e)

    except ValueError:
        print('Mathematically Undefined')
    


if __name__ == '__main__':
    try: 
        if len(sys.argv) == 3:
            x = float(sys.argv[1])
            sym = str(sys.argv[2])
            if (sym != 'log' and sym != 'sin' and sym != 'cos' and sym != 'tan' and sym != 'sqrt' and sym != 'factorial'):
                raise SymbolError(sym)
            else:
                try:
                    a = calculate_client(x,sym)
                    print ("Requesting %s(%s)........Done!"%(sym,x))
                    
                    print ("%s(%s) = %s"%(sym, x, a ))
                except Exception as e:
                    print('%s error was thrown'%e)
        
        else:
            raise ArgumentError(len(sys.argv)-1)
    except ArgumentError as ex:
        print('%s arguments entered. Please enter 2 arguments: One float and second String'%ex.num)
    
    except SymbolError as ex:
        print('%s symbol not found.'%ex.sym)
    
