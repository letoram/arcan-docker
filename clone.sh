if cd arcan; then
	git pull
	cd ..
else
	git clone https://github.com/letoram/arcan.git
fi

if cd durden; then
	git pull
	cd ..
else
	git clone https://github.com/letoram/durden.git
fi

if cd arcan-devices; then
	git pull
	cd ..
else
	git clone https://github.com/letoram/arcan-devices.git
fi
