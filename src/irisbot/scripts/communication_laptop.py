#!/usr/bin/env python

import rospy
import socket
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, RotateCmd, DriveCmd
import time

COMM_PORT = 9001

class Communication_Laptop():
    def __init__(self):
        rospy.loginfo("starting communication_laptop")
        rospy.init_node('communication_laptop', disable_signals=True)
        self.pub_rotate = rospy.Publisher('rotate', RotateCmd, queue_size=10)
        self.pub_drive = rospy.Publisher('drive', DriveCmd, queue_size=10)

        rospy.loginfo("connected to core.py")

        while not rospy.is_shutdown():
            s = None
            while s is None:
                s = self.create_client_socket()
                time.sleep(1)
            try:
                data = s.recv(64)
                rospy.loginfo("received TCP data")
                if not data:
                    break
                cmd = eval(data.decode('utf-8'))
                if not cmd:
                    break
                if cmd[0] == 'rotate' and len(cmd) == 4:
                    self.rotate(degrees=int(cmd[1]), direction=int(cmd[2]), speed=int(cmd[3]))
                elif cmd[0] == 'drive' and len(cmd) == 3:
                    self.drive(speed=int(cmd[1]), distance=int(cmd[2]))
                else:
                    rospy.loginfo("Unknown command received from core.py")
                s.close()
            except KeyboardInterrupt:
                if connection:
                    s.close()
                rospy.signal_shutdown("User killed communication_laptop node")
                break

    def drive(self, speed, distance):
        rospy.loginfo("sending drive cmd")
        d = DriveCmd()
        d.speed, d.distance = speed, distance
        self.pub_drive.publish(d)

    def rotate(self, degrees, direction, speed):
        rospy.loginfo("sending rotate cmd")
        r = RotateCmd()
        r.degrees, r.direction, r.speed = degrees, direction, speed
        self.pub_rotate.publish(r)

    def create_client_socket(self):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            s.connect(('localhost', COMM_PORT))
        except ConnectionRefusedError:
            s = None
        return s

if __name__ == '__main__':
    communication_laptop = Communication_Laptop()
