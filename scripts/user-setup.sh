function setup_user
{
	SOURCE_ROS="source /opt/ros/dashing/setup.bash"
	grep "${SOURCE_ROS}" ${HOME}/.bashrc 2> /dev/null || \
			echo "${SOURCE_ROS}" >> ${HOME}/.bashrc	
}
