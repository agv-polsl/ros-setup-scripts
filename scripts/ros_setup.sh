function install_rosdeps
{
	sudo apt update
	sudo apt --no-install-recommends -y install `cat pkglist-rosdeps`
}

function install_ros
{
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

	sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654z
	curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
	
	sudo apt update
	sudo apt -y install --no-install-recommends `cat pkglist-ros`

	echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
	source ~/.bashrc

	sudo rosdep init
	rosdep update

	sudo pip install -U catkin_tools
}

function install_gazebo
{
	sudo apt -y install --no-install-recommends `cat pkglist-gazebo`
}
