#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32,String

class Clock():
    def __init__(self):
        self.sub1 = rospy.Subscriber('/second', Int32, self.callback1)
        self.sub2 = rospy.Subscriber('/minute', Int32, self.callback2)
        self.sub3 = rospy.Subscriber('/hour', Int32, self.callback3)
        self.second = None
        self.minute = None
        self.hour = None
    
    def callback1(self, msg):
        s = msg.data
        self.second = s

    def callback2(self, msg):
        s = msg.data
        self.minute = s

    def callback3(self, msg):
        s = msg.data
        self.hour = s
        str1 = String()
        str1 = str(self.hour)+':'+str(self.minute)+':'+str(self.second)
        pub.publish(str1)
        rate.sleep()


if __name__ == "__main__":
    rospy.init_node('clock')
    pub = rospy.Publisher('/clock', String, queue_size=1)
    rate = rospy.Rate(1)
    clock = Clock()
    rospy.spin()