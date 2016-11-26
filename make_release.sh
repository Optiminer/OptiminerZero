rm -R optiminer-zcash/bin optiminer-zcash/logs
cp -r ~/programme/optiminer/equiminer/bin/ optiminer-zcash/
cp ~/programme/optiminer/equiminer/build/optiminer-zcash optiminer-zcash/
cp ~/programme/optiminer/equiminer/LICENSE optiminer-zcash/
cp ~/programme/optiminer/equiminer/mine.sh optiminer-zcash/
cp ~/programme/optiminer/equiminer/watchdog-cmd.sh optiminer-zcash/
cp README.md optiminer-zcash/
strip optiminer-zcash/optiminer-zcash
tar -h -czvf optiminer-zcash.tar.gz optiminer-zcash/*
