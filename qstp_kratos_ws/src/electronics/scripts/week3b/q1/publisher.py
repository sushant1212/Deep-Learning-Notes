#!/usr/bin/env python
import rospy
from std_msgs.msg import String

rospy.init_node('topic_publisher')

pub = rospy.Publisher('/new', String, queue_size=1)

str = String()
str = 'Hello World'
rate = rospy.Rate(15)

while not rospy.is_shutdown():
    pub.publish(str)
    rate.sleep()