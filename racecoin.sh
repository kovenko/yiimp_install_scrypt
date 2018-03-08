#!/bin/bash
cd /tmp
git clone https://github.com/racecrypto/racecoin.git
cd racecoin
./autogen.sh
./configure --enable-cxx --disable-tests
make -j4 # For four core CPU
cd src
strip raced
strip race-cli
strip race-tx
cp raced /usr/local/bin
cp race-cli /usr/local/bin
cp race-tx /usr/local/bin
cp /tmp/racecoin/src/qt/res/icons/bitcoin.png /var/web/images/RACE.png
mkdir /root/.racecore
touch /root/.racecore/race.conf
