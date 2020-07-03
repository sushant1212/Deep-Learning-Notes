#!/usr/bin/env python
import rospy
import numpy as np
from geometry_msgs.msg import Point
rospy.init_node('joint_angles')


def callback(msg):
    x = msg.x
    y = msg.y
    d = np.sqrt(x**2 + y**2)
    theta1 = np.arccos(x/d) - np.arccos((d**2)/(2*d))
    theta2 = np.arccos((d**2-2)/2)
    p = Point()
    p.x = theta1
    p.y = theta2
    pub.publish(p)

sub = rospy.Subscriber('/end_effector_position', Point, callback)
pub = rospy.Publisher('/joint_angles', Point, queue_size=1)

rospy.spin()