# This script performs cleaning operations of country files wqith errors

cd data/clean

#Fix guinea file- we just want to run the middle 12 rowa

echo "Fixing Guinea.cc.tct file"
head -n 24 Guinea.cc.txt| tail -n 12 > guinea.cc.txt.clean
mv -v guinea.cc.txt.clean guinea.cc.txt

#  Fix china file - we just want top 12 rows
echo "fixing china.cc.txt file"
head -n 12 china.cc.txt > china.cc.txt.clean
mv -v china.cc.txt.clean china.cc.txt

#fix niger file - we just want top 12 rows
echo "Fixing Niger.cc.txt file"
head -n 12 niger.cc.txt > niger.cc.txt.clean
mv -v niger.cc.txt.clean niger.cc.txt

cd ../..

sleep 1


