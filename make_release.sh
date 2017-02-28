VERSION="$1"

if [ -z "$1"  ];
then
  echo "No version provided"  
  VERSION="noname"
fi

rm -R optiminer-zero/bin optiminer-zero/logs
mkdir -p optiminer-zero/bin
cp -r ~/programme/optiminer-zcash/bin/*.bin optiminer-zero/bin/

#for V in 191205 200406 203603 207903 223600
#do
#B  mkdir -p "optiminer-zero/bin-$V"
#  cp -r ~/programme/optiminer-zero/bin-$V/*.bin "optiminer-zero/bin-$V/"
#done

cp ~/programme/optiminer-zcash/build/optiminer-zero optiminer-zero/
cp ~/programme/optiminer-zcash/LICENSE optiminer-zero/
cp ~/programme/optiminer-zcash/openssl-license.txt optiminer-zero/
cp ~/programme/optiminer-zcash/mine.sh optiminer-zero/
cp ~/programme/optiminer-zcash/watchdog-cmd.sh optiminer-zero/
cp README.md optiminer-zero/
strip optiminer-zero/optiminer-zero
tar -h -czvf optiminer-zero-${VERSION}.tar.gz optiminer-zero/*

