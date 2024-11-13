.SILENT: install

install:
	echo "Copying files with sudo:"
	install *_thumbnailer /usr/bin
	install *.thumbnailer /usr/share/thumbnailers

clean:
	echo "Cleaning cache..."
	-rm -rf ~/.cache/thumbnails
	echo "Killing Nautilus..."
	-nautilus -q >/dev/null 2>&1 || true
	
