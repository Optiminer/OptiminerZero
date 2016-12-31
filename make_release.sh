rm -R optiminer-zcash/bin optiminer-zcash/logs
mkdir -p optiminer-zcash/bin
cp -r ~/programme/optiminer/equiminer/bin/*.bin optiminer-zcash/bin
cp ~/programme/optiminer/equiminer/build/optiminer-zcash optiminer-zcash/
cp ~/programme/optiminer/equiminer/LICENSE optiminer-zcash/
cp ~/programme/optiminer/equiminer/openssl-license.txt optiminer-zcash/
cp ~/programme/optiminer/equiminer/mine.sh optiminer-zcash/
cp ~/programme/optiminer/equiminer/watchdog-cmd.sh optiminer-zcash/
cp README.md optiminer-zcash/
strip optiminer-zcash/optiminer-zcash
tar -h -czvf optiminer-zcash.tar.gz optiminer-zcash/*
