#!/usr/bin/env python
import sys
import rospy
from sushant.srv import Bonus



def bonus_client(x):
    rospy.wait_for_service('bonus')
    try:
        calc = rospy.ServiceProxy('bonus',Bonus)
        res = calc(x)

    
    
    except rospy.ServiceException as e:
        print ("Service call failed: %s"%e)

    except KeyboardInterrupt:
        print('')
        print('Shutting Down.......')
        sys.exit(1)

if __name__ == "__main__":
    try:
        if len(sys.argv) != 2:
            print('Enter only one argument!')
            sys.exit(1)
        
        if(int(sys.argv[1]) != 1 and int(sys.argv[1]) != 2):
            print('Enter either 1 or 2 only!')
            sys.exit(1)
        
        try:
            x = int(sys.argv[1])
            if x == 1:
                print('Enter arguments through calculator2 client')
                print('For entering arguments, run \'rosrun sushant calculate2_client.py <arguments>\'')
                print('Shut down bonus_client by pressing Ctrl + C')

            elif x == 2:
                print('Enter arguments through calculator client')
                print('For entering arguments, run \'rosrun sushant calculate_client.py <arguments>\'')
                print('Shut down bonus_client by pressing Ctrl + C')


            bonus_client(x)
            
                
            
        except Exception as e:
            print('%s error was thrown'%e)


    except Exception as e:
        print('%s error was thrown'%e)