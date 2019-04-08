# irisbot_ROS

All irisbot code is in the src/irisbot package.  
The four nodes are in irisbot/scripts and are:  
planner (high level control), communication_laptop (TCP with core.py), localization, and movement.

Communication laptop node is looking for commands of the form "rotate DEGREES DIRECTION SPEED" or "drive SPEED DISTANCE"

# To Do
Edit update.sh to pull irisbot_ROS instead of irisbot_python
Test Docker-ize-ability
Talk to Jaimin about interfacing
