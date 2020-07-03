#!/usr/bin/env python
import rospy
import sys
from geometry_msgs.msg import Twist


rospy.init_node('circle_move')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(15)

if len(sys.argv) == 2:
    r = float(sys.argv[1])
    t = Twist()
    t.linear.x = 0.1
    t.angular.z = float(0.1/r)

    while not rospy.is_shutdown():
        pub.publish(t)
        rate.sleep()

else:
    rospy.logerr('Enter one radius argument!')