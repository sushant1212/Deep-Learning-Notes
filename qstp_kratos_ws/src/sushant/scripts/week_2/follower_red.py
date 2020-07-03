#!/usr/bin/env python
# BEGIN ALL
import rospy, cv2, cv_bridge
import numpy as np
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist

class Follower:
  def __init__(self):
    self.bridge = cv_bridge.CvBridge()
    #cv2.namedWindow("window", 1)
    self.image_sub = rospy.Subscriber('camera/rgb/image_raw', Image, self.image_callback)                                       
    self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    self.twist = Twist()
 
  def image_callback(self, msg):
    image = self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    
    red_lower = np.array([0, 80, 80])
    red_upper = np.array([0, 255, 255])

    
    yellow_lower = np.array([10, 10, 10])
    yellow_upper = np.array([50, 255, 255])
    
    
    mask_r = cv2.inRange(hsv, red_lower, red_upper)
    cv2.imshow('mask_r',mask_r)

    mask_y = cv2.inRange(hsv, yellow_lower, yellow_upper)
    cv2.imshow('mask_y',mask_y)
    
    h, w, d = image.shape
    search_top = 3*h/4 + 40
    search_bot = 3*h/4 + 60
    mask_r[0:search_top, 0:w] = 0
    mask_r[search_bot:h, 0:w] = 0
    M_r = cv2.moments(mask_r)



    if M_r['m00'] > 0:
      cx = int(M_r['m10']/M_r['m00'])
      cy = int(M_r['m01']/M_r['m00'])
      cv2.circle(image, (cx, cy), 20, (0,0,255), -1)
      # BEGIN CONTROL
      err = cx - w/2
      self.twist.linear.x = 0.30
      self.twist.angular.z = -float(err) / 400
      self.cmd_vel_pub.publish(self.twist)
      # END CONTROL


    else:
        mask_y = cv2.inRange(hsv, yellow_lower, yellow_upper)
        cv2.imshow('mask_y',mask_y)
        mask_y[0:search_top + 20, 0:w] = 0
        mask_y[search_bot + 20:h, 0:w] = 0
        M_y = cv2.moments(mask_y)

        if M_y['m00'] > 0:
            cx = int(M_y['m10']/M_y['m00'])
            cy = int(M_y['m01']/M_y['m00'])
            cv2.circle(image, (cx, cy), 20, (0,255,0), -1)
            # BEGIN CONTROL
            err = cx - w/2
            self.twist.linear.x = 0.2
            self.twist.angular.z = -float(err) / 100
            self.cmd_vel_pub.publish(self.twist)
            # END CONTROL
        else:
            mask_y = cv2.inRange(hsv, yellow_lower, yellow_upper)
            cv2.imshow('mask_y',mask_y)
            mask_y[0:search_top - 90, 0:w] = 0
            mask_y[search_bot - 70:h, 0:w] = 0
            M_y = cv2.moments(mask_y)

            if M_y['m00'] > 0:
                cx = int(M_y['m10']/M_y['m00'])
                cy = int(M_y['m01']/M_y['m00'])
                cv2.circle(image, (cx, cy), 20, (0,255,0), -1)
                # BEGIN CONTROL
                err = cx - w/2
                self.twist.linear.x = 0.2
                self.twist.angular.z = -float(err) / 100
                self.cmd_vel_pub.publish(self.twist)
                # END CONTROL


            else:
                rospy.logwarn('Color not visible!')
                self.twist.linear.x = 0.0
                self.twist.angular.z = 0.0
                self.cmd_vel_pub.publish(self.twist)




    cv2.imshow("window", image)
    cv2.waitKey(3)


rospy.init_node('follower')
follower = Follower()
rospy.spin()
# END ALL
