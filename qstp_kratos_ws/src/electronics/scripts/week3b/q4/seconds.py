#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

rospy.init_node('seconds_publisher')


count = 0

pub = rospy.Publisher('/second', Int32, queue_size=1)
rate = rospy.Rate(1)

while not rospy.is_shutdown():
    count += 1
    if count != 60:
        pub.publish(count)
    
    elif count == 60:
        count = 0
        pub.publish(count)
    
    rate.sleep()