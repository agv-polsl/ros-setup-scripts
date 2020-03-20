function install_rosdeps
{
	sudo apt --no-install-recommends -y install `cat pkglist-rosdeps`
}

function install_ros
{
	ROS_KEY_URL=https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc

	curl -s $ROS_KEY_URL | sudo apt-key add -
	sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu \
		`lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
	
	sudo apt -y install --no-install-recommends `cat pkglist-ros`
}

function install_gazebo
{
	sudo apt -y install --no-install-recommends `cat pkglist-gazebo`
}
