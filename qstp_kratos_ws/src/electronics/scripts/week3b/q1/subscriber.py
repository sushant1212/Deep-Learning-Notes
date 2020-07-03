#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback(msg):
    str = msg.data
    print(str)


rospy.init_node('topic_subscriber')
sub = rospy.Subscriber('/new', String, callback)
rospy.spin()