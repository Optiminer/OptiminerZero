cd rm -R optiminer-zcash-win/bin optiminer-zcash/logs
cp -r ~/programme/optiminer/equiminer/bin optiminer-zcash-win/
cp ~/programme/optiminer/equiminer/LICENSE optiminer-zcash-win/
cp ~/programme/optiminer/equiminer/start.bat optiminer-zcash-win/
unix2dos optiminer-zcash-win/start.bat
cp README.md optiminer-zcash-win/
rm optiminer-zcash.zip
zip -r optiminer-zcash.zip optiminer-zcash-win/*
