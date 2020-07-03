#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import time

rospy.init_node('s1')

pub = rospy.Publisher('/s1', String, queue_size=5)
rate = rospy.Rate(10)
data1 = String()
data1 = String()

data1 = 'green'
data2 = 'red'


while not rospy.is_shutdown():
    start_time = time.time()
    while(time.time() - start_time < 10):
        pub.publish(data1)
        rate.sleep()

    while(time.time() - start_time > 10 and time.time() - start_time < 20):
        pub.publish(data2)
        rate.sleep()    