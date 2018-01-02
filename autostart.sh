sudo apt-get -y install build-essential cmake libuv1-dev libmicrohttpd-dev tor screen

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

# $1 Currency (Electroneum as ETN, Monero as XMR)
# $2 ETN Pool


if test $1 = ETN;
then
	if test $2 = easy;
	then
		screen -d -m torsocks ./xmrig -a cryptonight -o stratum+tcp://etn.easyhash.io:3630 -u etnkKPTknoHRSGXHakPfSSaDxaBnbAZ51gbdjsQ7eBN3Ru4AZVd49RLMFJVZDbodUTA7y9cmityG6EBszT1Dr4VR7RK7a71SMj -p 4 -t 2
	else
		screen -d -m torsocks ./xmrig -a cryptonight -o stratum+tcp://asiapool.electroneum.com:3333 -u etnkKPTknoHRSGXHakPfSSaDxaBnbAZ51gbdjsQ7eBN3Ru4AZVd49RLMFJVZDbodUTA7y9cmityG6EBszT1Dr4VR7RK7a71SMj -p 4 -t 2
	fi
elif test $1 = XMR;
then
	screen -d -m torsocks ./xmrig -o pool.supportxmr.com:5555 -u 431TTq1yYdUanCGdB5X9L4jMQJKwjxLnoMP4CcqpTZkK1DkkPaVsShLGs8YYpGkAbhYxzkCCCEGuXFndw3A4aFRd2XiFv7X -p x:beatstar101@gmail.com --nicehash -t 2
fi
