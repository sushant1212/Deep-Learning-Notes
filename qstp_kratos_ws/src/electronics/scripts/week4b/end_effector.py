#!/usr/bin/env python
import rospy
import sys
from geometry_msgs.msg import Point

rospy.init_node('end_effector')

if len(sys.argv) != 3:
    sys.exit('Please enter two arguments as x and y coordinates of the end effector')

else:
    x = float(sys.argv[1])
    y = float(sys.argv[2])

    if (x**2 + y**2) > 4:
        sys.exit('Cannot reach the given point')
    
    p = Point()
    p.x = x
    p.y = y
    rate = rospy.Rate(1)

    pub = rospy.Publisher('/end_effector_position', Point, queue_size=1)


    while not rospy.is_shutdown():
        pub.publish(p)
        rate.sleep()        