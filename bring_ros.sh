mkdir CiiMAV_ROS
cd CiiMAV_ROS
mkdir -p Quad_ROS/src
cd Quad_ROS
catkin_make
echo "~/CiiMAV_ROS/Quad_ROS/devel/setup.bash" >> ~/.bashrc
cd src
echo "Create package camera"
catkin_create_pkg camera camera_info_manager cv_bridge dynamic_reconfigure image_transport nodelet roscpp rospy std_msgs
cd camera/src
cp ~/Downloads/Quad_ROS/src/camera/src/* .
cd ../..

echo "Create package detect"
catkin_create_pkg detect roscpp rospy std_msgs
cd detect/src
cp ~/Downloads/Quad_ROS/src/detect/src/* .
cd ../..

echo "Create package main_mission"
catkin_create_pkg main_mission roscpp rospy std_msgs
cd main_mission/src
cp ~/Downloads/Quad_ROS/src/main_mission/src/* .
cd ../..

echo "Create package qr_scan"
catkin_create_pkg qr_scan roscpp rospy std_msgs
cd qr_scan/src
cp ~/Downloads/Quad_ROS/src/qr_scan/src/* .
cd ../..

echo "Create package save_coor"
catkin_create_pkg save_coor roscpp rospy std_msgs
cd save_coor/src
cp ~/Downloads/Quad_ROS/src/save_coor/src/* .
cd ../../../
catkin_make

cd ~
echo "~/CiiMAV_ROS/Quad_ROS/devel/setup.bash" >> .bashrc
source .bashrc
