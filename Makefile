.SILENT: install

install:
	echo "Copying files with sudo:"
	install --owner root --group root --mode 755 bin/*_thumbnailer /usr/bin
	install --owner root --group root --mode 755 thumbnailers/*.thumbnailer /usr/share/thumbnailers
	install --owner root --group root --mode 644 mime/packages/fusion.xml /usr/share/mime/packages/
	install --owner root --group root --mode 644 mime/packages/org.freecad.FreeCAD.xml /usr/share/mime/packages/
	update-mime-database /usr/share/mime

local:
	echo "Copying files locally:"
	install --owner $(whoami) --group $(whoami) --mode 755 bin/*_thumbnailer ~/.local/bin
	install --owner $(whoami) --group $(whoami) --mode 755 thumbnailers/*.thumbnailer ~/.local/share/thumbnailers
	install --owner $(whoami) --group $(whoami) --mode 644 mime/packages/fusion.xml ~/.local/share/mime/packages/
	install --owner $(whoami) --group $(whoami) --mode 644 mime/packages/org.freecad.FreeCAD.xml ~/.local/share/mime/packages/
	update-mime-database ~/.local/share/mime

local-uninstall:
	echo "Removing local files:"
	-rm -f ~/.local/bin/*_thumbnailer
	-rm -f ~/.local/share/thumbnailers/*.thumbnailer
	-rm -f ~/.local/share/mime/packages/fusion.xml
	-rm -f ~/.local/share/mime/packages/org.freecad.FreeCAD.xml
	update-mime-database ~/.local/share/mime

clean:
	echo "Cleaning cache..."
	-rm -rf ~/.cache/thumbnails
	echo "Killing Nautilus..."
	-nautilus -q >/dev/null 2>&1 || true
