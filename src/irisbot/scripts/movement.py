#!/usr/bin/env python

import rospy
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, RotateCmd, DriveCmd
import sys
sys.path.append('/home/lilly/Desktop/DockerSpace')

try:
    import m3pi
    irl = True
except RuntimeError:
    print("Not running on RPi")
    irl = False

class Movement():
    def __init__(self, m3pi):
        rospy.loginfo("starting movement")
        rospy.init_node('movement')
        self.role = None
        self.pose = Pose()
        self.m3pi = m3pi
        self.sub_set_anchor = rospy.Subscriber('set_anchor', Pose, self.set_anchor_CB)
        self.sub_rotate = rospy.Subscriber('rotate', RotateCmd, self.rotate_CB)
        self.sub_drive = rospy.Subscriber('drive', DriveCmd, self.drive_CB)
        rospy.spin()

    def set_anchor_CB(self, p):
        rospy.loginfo("as anchor, setting pose")
        self.role = "anchor"
        self.pose.x = p.x
        self.pose.y = p.y
        self.pose.orientation = p.orientation

    def rotate_CB(self, r):
        if not irl:
            rospy.loginfo("rotating: %d, %d, %d", r.degrees, r.direction, r.speed)
        else:
            self.m3pi.rotate_degrees(r.degrees, r.direction, r.speed)

    def drive_CB(self, d):
        if not irl:
            rospy.loginfo("driving: %d, %d", d.speed, d.distance)
        else:
            self.m3pi.move_straight_distance(speed, distance)

if __name__ == '__main__':
    if irl:
        resetpin = 0000 # TODO
        M3PI = m3pi(resetpin)
    else:
        M3PI = None
    movement = Movement(M3PI)
