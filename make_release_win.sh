VERSION="$1"

if [ -z "$1"  ];
then
  echo "No version provided"  
  VERSION="noname"
fi

rm -R optiminer-zcash-win/bin optiminer-zcash/logs
mkdir -p optiminer-zcash-win/bin
cp -r ~/programme/optiminer-zcash/bin/* optiminer-zcash-win/bin

for V in 191205 200406 203603 207903 223600
do
  mkdir -p "optiminer-zcash-win/bin-$V"
  cp -r ~/programme/optiminer-zcash/bin-$V-win/*.bin "optiminer-zcash-win/bin-$V/"
done


cp ~/programme/optiminer-zcash/LICENSE optiminer-zcash-win/
cp ~/programme/optiminer-zcash/start.bat optiminer-zcash-win/
unix2dos optiminer-zcash-win/start.bat
cp README.md optiminer-zcash-win/
unix2dos optiminer-zcash-win/README.md
rm optiminer-zcash.zip
zip -r optiminer-zcash-${VERSION}.zip optiminer-zcash-win/*
