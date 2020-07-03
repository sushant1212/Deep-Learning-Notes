#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

rospy.init_node('minutes_publisher')
count = 0

rate = rospy.Rate(1)

def callback(msg):
    global count
    s = msg.data
    pub.publish(count)
    rate.sleep()
    if s == 59:
        count += 1
    
    if count == 60:
        count = 0


pub = rospy.Publisher('/minute', Int32, queue_size=1)
sub = rospy.Subscriber('/second', Int32, callback)

rospy.spin()