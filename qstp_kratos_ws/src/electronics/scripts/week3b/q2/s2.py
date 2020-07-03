#!/usr/bin/env python

import rospy
from std_msgs.msg import String

rospy.init_node('s2_subscriber')

def callback(msg):
    str = msg.data
    if str == 'green':
        pub.publish('red')
        rate.sleep()
    
    else:
        pub.publish('green')
        rate.sleep()

sub = rospy.Subscriber('s1', String, callback)
pub = rospy.Publisher('s2', String, queue_size=1)
rate = rospy.Rate(10)

rospy.spin()