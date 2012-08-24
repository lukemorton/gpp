INSTALL_DIR=/usr/local/bin

if [ -f gpp ]; then
	echo "File found in local directory, using that."
	echo "Moving copying gpp to $INSTALL_DIR."
	sudo cp -f gpp "$INSTALL_DIR"
else
	curl -o gpp https://raw.github.com/DrPheltRight/gpp/master/gpp
	sudo mv -f gpp "$INSTALL_DIR"
fi

echo "Ensuring executable permissions."
sudo chmod +x "$INSTALL_DIR/gpp"

echo "All done."