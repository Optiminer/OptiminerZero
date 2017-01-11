VERSION="$1"

if [ -z "$1"  ];
then
  echo "No version provided"  
  VERSION="noname"
fi

rm -R optiminer-zcash/bin optiminer-zcash/logs
mkdir -p optiminer-zcash/bin
cp -r ~/programme/optiminer-zcash/bin/*.bin optiminer-zcash/bin/

for V in 191205 200406 203603 207903 223600
do
  mkdir -p "optiminer-zcash/bin-$V"
  cp -r ~/programme/optiminer-zcash/bin-$V/*.bin "optiminer-zcash/bin-$V/"
done

cp ~/programme/optiminer-zcash/build/optiminer-zcash optiminer-zcash/
cp ~/programme/optiminer-zcash/LICENSE optiminer-zcash/
cp ~/programme/optiminer-zcash/openssl-license.txt optiminer-zcash/
cp ~/programme/optiminer-zcash/mine.sh optiminer-zcash/
cp ~/programme/optiminer-zcash/watchdog-cmd.sh optiminer-zcash/
cp README.md optiminer-zcash/
strip optiminer-zcash/optiminer-zcash
tar -h -czvf optiminer-zcash-${VERSION}.tar.gz optiminer-zcash/*

