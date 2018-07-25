sudo apt update -y
sudo apt upgrade -y
wget https://zcore.ch/downloads/Linux-x64/ZCore_linux64.tar.gz
tar -xf ZCore_linux64.tar.gz
chmod 777 ./dependencies.sh
./dependencies.sh
mkdir $HOME/.zcore
YOURIP=`wget -qO- eth0.me`
printf "rpcuser=zcoreuser\nrpcpassword=zcorepassword\nrpcport=51314\nrpcallowip=127.0.0.1\ndaemon=1\nlisten=1\nserver=1\nmaxconnections=256\nexternalip=$YOURIP\nmasternode=1\nmasternodeprivkey=" > /$HOME/.zcore/zcore.conf


