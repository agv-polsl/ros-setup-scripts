# Setup scripts for ROS Melodic environment

![Build](https://github.com/agv-polsl/ros-setup-scripts/workflows/Build/badge.svg)

Shell scripts for installing ROS Melodic on Ubuntu 18.04.4 LTS Bionic.
Includes Gazebo installation.

## Setup steps

1. Download Ubuntu 18.04.4 LTS **Server** from Ubuntu
   [website](https://ubuntu.com/download/server/thank-you?version=18.04.4&architecture=amd64).
2. Install Ubuntu Server (you can click through the installation).
3. Download this repo with `git clone`.
4. Enter the repo `cd ros-setup-scripts`.
5. Setup permissions `chmod +x ./install`.
6. Run installation `./install`.
7. To enter desktop environment start X server `startx`.
8. Setting up xfce theming may require re-running the script after entering gui.

## Files in repo

When extending the setup please put packages in according files:

* `pkglist-de` - desktop environment related packages.
* `pkglist-gazebo`- gazebo related packages.
* `pkglist-ros` - ROS related packages.
* `pkglist-rosdeps` - ROS dependencies and ros projects related packages.
* `replist-de` - additional repos related to desktop environment.
* `requirements.txt`- pip modules.
