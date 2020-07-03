#!/usr/bin/env python
import rospy
from std_msgs.msg import String
def callback(msg):
    str1 = msg.data
    print(str1)

rospy.init_node('show_time')
sub = rospy.Subscriber('/clock', String, callback)
rospy.spin()