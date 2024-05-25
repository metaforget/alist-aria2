
aria2_dir=/home/aria2


apk add --no-cache aria2 curl

mkdir -p $aria2_dir
cd $aria2_dir
#wget https://github.com/P3TERX/aria2.conf/archive/refs/heads/master.tar.gz
#tar -zxvf master.tar.gz --strip-components=1
#rm -rf master.tar.gz
#sed -i 's|rpc-secret|#rpc-secret|g' ./aria2.conf
touch $aria2_dir/aria2.session
#./tracker.sh
