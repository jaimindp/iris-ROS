#!/usr/bin/env python

import rospy
from std_msgs.msg import Bool, String
from irisbot.msg import Pose, Node, NodeLoc, NodeMsg
from irisbot.srv import *

class Localization():
    def __init__(self):
        rospy.loginfo("starting localization")
        rospy.init_node('localization')
        self.role = None
        self.pose = Pose()
        self.sub_set_anchor = rospy.Subscriber('set_anchor', Pose, self.set_anchor_CB)
        self.srv_get_anchor = rospy.Service('get_anchor', GetAnchor, self.handle_get_anchor)
        rospy.spin()

    def set_anchor_CB(self, p):
        rospy.loginfo("localization: as anchor, setting pose")
        self.role = "anchor"
        self.pose.x = p.x
        self.pose.y = p.y
        self.pose.orientation = p.orientation
        rospy.loginfo("changing radio channel")

    def handle_get_anchor(self, request):
        for i in range(len(request.ids)):
            rospy.loginfo("Locating anchor %s", request.ids[i])

        # BLACKBOX GET ANCHORS
        anchor = NodeLoc()
        anchor.node.ID, anchor.node.addr, anchor.node.role = 0, 0, "other"
        anchor.pose.x, anchor.pose.y, anchor.pose.orientation = 1, 2, 0
        dist = 10.0
        anchors = [anchor]*len(request.ids)
        dists = [dist]*len(request.ids)

        return GetAnchorResponse(anchors, dists)

if __name__ == '__main__':
    localization = Localization()
