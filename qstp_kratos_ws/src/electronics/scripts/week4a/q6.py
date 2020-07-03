#!/usr/bin/env python
import rospy
import sys
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from math import pi

class Bot():
    def __init__(self):
        self.sub = rospy.Subscriber('/odom', Odometry, self.callback)
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.arg = None # to take in input argument
        self.goal_angle = None
        self.angle = None
        self.pid_angle_e_sum = 0
        self.pid_angle_e_prev = None
        self.count = 0

    def get_euler_angle(self, msg):
        orientation_q = msg.pose.pose.orientation
        orientation_list = [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]
        (roll, pitch, yaw) = euler_from_quaternion(orientation_list)
        return yaw
    
    def pid_angle(self, goal_angle, K_P, K_I, K_D):
        e = goal_angle - self.angle
        self.pid_angle_e_sum += e
        dedt = e - self.pid_angle_e_prev
        t = Twist()
        t.angular.z = K_P*e + K_D*dedt + K_I*self.pid_angle_e_sum
        self.pub.publish(t)
        self.pid_angle_e_prev = e
    
    def callback(self, msg):
        self.angle = self.get_euler_angle(msg)
        if self.angle < 0:
            self.angle += 2*pi
        
        if self.count == 0:
            self.goal_angle = self.angle + self.arg
            if self.goal_angle < 0:
                self.goal_angle += 2*pi
            if self.goal_angle > 2*pi:
                self.goal_angle -= 2*pi
            self.pid_angle_e_prev = self.goal_angle - self.angle
            self.count += 1
        
        if self.goal_angle - self.angle > 0:
            if self.goal_angle - self.angle > 0.01:
                self.pid_angle(self.goal_angle, 0.3, 0.0, 0.0)
        
            else:
                t = Twist()
                t.angular.z = 0
                self.pub.publish(t)
                print('Reached angle')

        else:
            if self.goal_angle - self.angle < -0.01:
                self.pid_angle(self.goal_angle, 0.3, 0.0, 0.0)
        
            else:
                t = Twist()
                t.angular.z = 0
                self.pub.publish(t)
                print('Reached angle')


if __name__ == "__main__":
    rospy.init_node('turn')
    if len(sys.argv) == 2:
        bot = Bot()
        bot.arg = float(sys.argv[1])
        if bot.arg > 2*pi or bot.arg < 0:
            rospy.logerr('Enter angle beteen 0 and 2*pi')
            sys.exit('failed')
        rospy.spin()

    
    else:
        rospy.logerr('Enter one angle(radian) argument!')