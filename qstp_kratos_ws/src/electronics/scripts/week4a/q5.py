#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from math import sin, cos, sqrt


class Bot():
    def __init__(self):
        self.init_position_x = None
        self.init_position_y = None
        self.x = None
        self.y = None
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.sub = rospy.Subscriber('/odom', Odometry, self.callback)
        self.theta = None
        self.rate = rospy.Rate(20)
        self.goal_x = None
        self.goal_y = None

        self.count = 0 # this count variable is to take in the first coordinates as initial position

    def get_euler_angle(self, msg):
        orientation_q = msg.pose.pose.orientation
        orientation_list = [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]
        (roll, pitch, yaw) = euler_from_quaternion (orientation_list)
        return yaw

    def dist(self, x1, y1, x2, y2):
        return sqrt((x1 - x2)**2 + (y1-y2)**2)

    def callback(self, msg):
        if self.count == 0:
            self.init_position_x = msg.pose.pose.position.x
            self.init_position_y = msg.pose.pose.position.y
            self.theta = self.get_euler_angle(msg)
            self.goal_x = self.init_position_x + 5*cos(self.theta)
            self.goal_y = self.init_position_y + 5*sin(self.theta)#These two lines are to generalize the code for any initial position of the turtlebot 
            self.count += 1
        
        self.x = msg.pose.pose.position.x
        self.y = msg.pose.pose.position.y   
             
        
        if(self.dist(self.goal_x, self.goal_y, self.x, self.y) > 0.1):
            e = self.dist(self.goal_x, self.goal_y, self.init_position_x, self.init_position_y) - self.dist(self.x, self.y, self.init_position_x, self.init_position_y)
            t = Twist()
            t.linear.x = 0.04*e
            self.pub.publish(t)
            print(self.x,self.y)
            print(e)
            
        else:
            t = Twist()
            t.linear.x = 0.0
            self.pub.publish(t)
            print('Reached destination!')
            self.rate.sleep()
            



if __name__ == "__main__":
    rospy.init_node('move_five_units')
    bot = Bot()
    rospy.spin()