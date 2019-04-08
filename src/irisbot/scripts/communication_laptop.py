#!/usr/bin/env python

import rospy
import socket
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, RotateCmd, DriveCmd

class Communication_Laptop():
    def __init__(self):
        rospy.loginfo("starting communication_laptop")
        rospy.init_node('communication_laptop', disable_signals=True)
        self.pub_rotate = rospy.Publisher('rotate', RotateCmd, queue_size=10)
        self.pub_drive = rospy.Publisher('drive', DriveCmd, queue_size=10)
        s = self.create_server_socket()

        while not rospy.is_shutdown():
            connection = None
            try:
                rospy.loginfo("listening for TCP data")
                connection, address = s.accept()
                rospy.loginfo("received TCP data")
                data = connection.recv(64)
                if not data:
                    break
                cmd = eval(data.decode('utf-8'))
                if cmd[0] == 'rotate' and len(cmd) == 4:
                    self.rotate(degrees=int(cmd[1]), direction=int(cmd[2]), speed=int(cmd[3]))
                elif cmd[0] == 'drive' and len(cmd) == 3:
                    self.drive(speed=int(cmd[1]), distance=int(cmd[2]))
                else:
                    rospy.loginfo("Unknown command received from core.py")
                connection.close()
            except KeyboardInterrupt:
                if connection:
                    connection.close()
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

    def create_server_socket(self):
        rospy.loginfo("creating TCP server socket")
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind(('127.0.0.1', 3535))
        s.listen(1)
        return s

if __name__ == '__main__':
    communication_laptop = Communication_Laptop()
