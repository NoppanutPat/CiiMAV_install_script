mkdir CiiMAV_ROS
cd CiiMAV_ROS
mkdir -p Quad_ROS/src
cd Quad_ROS
catkin_make
echo "Quad_ROS/devel/setup.bash"
cd src
catkin_create_pkg camera camera_info_manager cv_bridge dynamic_reconfigure image_transport nodelet roscpp rospy std_msgs
cd camera/src
cp ~/Download/Quad_ROS/src/camera/src/* .
cd ../../
catkin_create_pkg detect roscpp rospy std_msgs
cd detect/src
cp ~/Download/Quad_ROS/src/detect/src/* .
catkin_create_pkg main_mission roscpp rospy std_msgs
cd main_mission/src
cp ~/Download/Quad_ROS/src/main_mission/src/* .
catkin_create_pkg qr_scan roscpp rospy std_msgs
cd qr_scan/src
cp ~/Download/Quad_ROS/src/qr_scan/src/* .
catkin_create_pkg save_coor roscpp rospy std_msgs
cd save_coor/src
cp ~/Download/Quad_ROS/src/save_coor/src/* .
cd ../../../
catkin_make


