sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev screen

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

if test $1 = m;
then
	screen ./xmrig -o stratum+tcp://mine.moneropool.com:3333 -u 42WqtZHGavhBa1h7aeAFTeLJiV8gPc4XSMBLpaCB5L9oWj4cffiknzqWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm3xe82B5 -p x
else
	screen ./xmrig -o pool.supportxmr.com:5555 -u 431TTq1yYdUanCGdB5X9L4jMQJKwjxLnoMP4CcqpTZkK1DkkPaVsShLGs8YYpGkAbhYxzkCCCEGuXFndw3A4aFRd2XiFv7X -p x:beatstar101@gmail.com --nicehash
fi
