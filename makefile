SED=sed -i '/ascii-picker/d' ~/.bashrc
CPART=cp -r asciiart/ /usr/local/bin
CPPICKER=cp ascii-picker /usr/local/bin
ECHO=echo 'ascii-picker' >> ~/.bashrc

write-picker:
	$(ECHO)

makedir:
	mkdir /usr/local/bin/asciiart

install: makedir write-picker
	$(CPART)
	$(CPPICKER)

uninstall:
	$(SED)
	rm -rf /usr/local/bin/asciiart
