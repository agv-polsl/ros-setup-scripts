function install_de
{
	sudo add-apt-repository -y `cat replist-de` 
	sudo apt --no-install-recommends -y install `cat pkglist-de`
}

function config_xfce_theming
{
	# Set xfce theme
	xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Dark"
	# Set gtk apps theme
	xfconf-query -c xfwm4 -p /general/theme -s 'Arc-Dark'
	# Set icons
	xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
	# Remove screensaver
	sudo apt remove -y xscreensaver
	# Make qt5 use gtk theme
	sudo sh -c "echo 'QT_QPA_PLATFORMTHEME=gtk2' >> /etc/environment"
}
