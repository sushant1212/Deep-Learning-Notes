#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32
count = 0
class Hour:
    def __init__(self):
        self.sub_sec = rospy.Subscriber('/second', Int32, self.callback1)
        self.sub_min = rospy.Subscriber('/minute', Int32, self.callback2)
        self.min = None
        self.sec = None

    def callback1(self,msg):
        self.sec = msg.data

    def callback2(self, msg):
        global count
        self.min = msg.data
        pub.publish(count)
        rate.sleep()
        if self.min == 59 and self.sec == 59:
            count += 1
    
        if count == 24:
            count = 0


if __name__ == "__main__":
    rospy.init_node('hour_publisher')
    rate = rospy.Rate(1)
    pub = rospy.Publisher('/hour', Int32, queue_size=1)
    hour = Hour()
    rospy.spin()