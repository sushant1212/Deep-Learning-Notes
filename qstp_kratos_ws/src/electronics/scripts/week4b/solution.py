#!/usr/bin/env python
import rospy
import tf
import tf2_ros
import geometry_msgs.msg

rospy.init_node('tf2_broadcaster')

broadcaster =  tf2_ros.StaticTransformBroadcaster()
T1 = geometry_msgs.msg.TransformStamped()
T1.header.stamp = rospy.Time.now()
T1.header.frame_id = 'base'
T1.child_frame_id = 'camera_rot'
T1.transform.translation.x = 0.0
T1.transform.translation.y = 0.0
T1.transform.translation.z = 0.0
quat1 = tf.transformations.quaternion_from_euler(0.79, 0.0, 0.79)
T1.transform.rotation.x = quat1[0]
T1.transform.rotation.y = quat1[1]
T1.transform.rotation.z = quat1[2]
T1.transform.rotation.w = quat1[3]


T2 = geometry_msgs.msg.TransformStamped()
T2.header.stamp = rospy.Time.now()
T2.header.frame_id = 'camera_rot'
T2.child_frame_id = 'camera'
T2.transform.translation.x = 0.0
T2.transform.translation.y = 1.0
T2.transform.translation.z = 1.0
quat2 = tf.transformations.quaternion_from_euler(0.0, 0.0, 0.0)
T2.transform.rotation.x = quat2[0]
T2.transform.rotation.y = quat2[1]
T2.transform.rotation.z = quat2[2]
T2.transform.rotation.w = quat2[3]



T3 = geometry_msgs.msg.TransformStamped()
T3.header.stamp = rospy.Time.now()
T3.header.frame_id = 'camera'
T3.child_frame_id = 'object_rot'
T3.transform.translation.x = 0.0
T3.transform.translation.y = 0.0
T3.transform.translation.z = 0.0
quat3 = tf.transformations.quaternion_from_euler(0.0, 0.0, 1.5)
T3.transform.rotation.x = quat3[0]
T3.transform.rotation.y = quat3[1]
T3.transform.rotation.z = quat3[2]
T3.transform.rotation.w = quat3[3]

T4 = geometry_msgs.msg.TransformStamped()
T4.header.stamp = rospy.Time.now()
T4.header.frame_id = 'object_rot'
T4.child_frame_id = 'object'
T4.transform.translation.x = 0.0
T4.transform.translation.y = 1.0
T4.transform.translation.z = 0.0
quat4 = tf.transformations.quaternion_from_euler(0.0, 0.0, 0.0)
T4.transform.rotation.x = quat4[0]
T4.transform.rotation.y = quat4[1]
T4.transform.rotation.z = quat4[2]
T4.transform.rotation.w = quat4[3]


rate = rospy.Rate(10)
while not rospy.is_shutdown():
    broadcaster.sendTransform(T1)
    broadcaster.sendTransform(T2)
    broadcaster.sendTransform(T3)
    broadcaster.sendTransform(T4)
    rate.sleep()