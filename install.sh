# gpp install script
#
# written by Luke Morton, 2012
# licensed under MIT
# https://github.com/DrPheltRight/gpp

if [ -z "$INSTALL_DIR" ]; then
	INSTALL_DIR=/usr/local/bin
fi

if [ -f gpp ]; then
	echo "File found in local directory, using that."
	echo "Copying gpp to $INSTALL_DIR."
	sudo cp -f gpp "$INSTALL_DIR"
else
	echo "Downloading gpp from github using curl."
	curl -o gpp https://raw.github.com/DrPheltRight/gpp/master/gpp
	echo "Moving gpp into $INSTALL_DIR."
	sudo mv -f gpp "$INSTALL_DIR"
fi

echo "Ensuring executable permissions."
sudo chmod +x "$INSTALL_DIR/gpp"

echo "All done."