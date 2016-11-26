cd rm -R optiminer-zcash-win/bin optiminer-zcash/logs
cp -r ~/programme/optiminer/equiminer/bin/ optiminer-zcash-win/
cp ~/programme/optiminer/equiminer/LICENSE optiminer-zcash-win/
cp ~/programme/optiminer/equiminer/mine.sh optiminer-zcash/
cp README.md optiminer-zcash-win/
zip -r optiminer-zcash.zip optiminer-zcash-win/*
