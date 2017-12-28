sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev

if ! [ -e "build" ];
then
	mkdir build
fi

cd build

if  ! [ -e "xmrig" ]
then
	cmake ..
	make
fi

./xmrig -o pool.supportxmr.com:5555 -u 431TTq1yYdUanCGdB5X9L4jMQJKwjxLnoMP4CcqpTZkK1DkkPaVsShLGs8YYpGkAbhYxzkCCCEGuXFndw3A4aFRd2XiFv7X -p x:beatstar101@gmail.com --nicehash
