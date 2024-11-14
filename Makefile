.SILENT: install

install:
	echo "Copying files with sudo:"
	install --owner root --group root --mode 755 bin/*_thumbnailer /usr/bin
	install --owner root --group root --mode 755 thumbnailers/*.thumbnailer /usr/share/thumbnailers
	install --owner root --group root --mode 644 mime/packages/fusion.xml /usr/share/mime/packages/
	update-mime-database /usr/share/mime


clean:
	echo "Cleaning cache..."
	-rm -rf ~/.cache/thumbnails
	echo "Killing Nautilus..."
	-nautilus -q >/dev/null 2>&1 || true
