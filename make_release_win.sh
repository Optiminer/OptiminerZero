VERSION="$1"

if [ -z "$1"  ];
then
  echo "No version provided"  
  VERSION="noname"
fi

#rm -R optiminer-zero-win/bin optiminer-zero/logs
mkdir -p optiminer-zero-win/bin
cp -r ~/programme/optiminer-zcash/bin/*.bin optiminer-zero-win/bin

#for V in 191205 200406 203603 207903 223600
#do
#  mkdir -p "optiminer-zero-win/bin-$V"
#  cp -r ~/programme/optiminer-zero/bin-$V-win/*.bin "optiminer-zero-win/bin-$V/"
#done


cp ~/programme/optiminer-zcash/LICENSE optiminer-zero-win/
cp ~/programme/optiminer-zcash/start.bat optiminer-zero-win/
unix2dos optiminer-zero-win/start.bat
cp README.md optiminer-zero-win/
unix2dos optiminer-zero-win/README.md
rm optiminer-zero.zip
zip -r optiminer-zero-${VERSION}.zip optiminer-zero-win/*
