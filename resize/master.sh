p=$(dirname $(realpath $0))

cd $p

file=$1

read -p "name: " name
read -p "(x y): " pos

touch $p/$name.txt

for size in 16 24 32 48; do	
	magick $file -filter box -define filter:support=0.5 -resize ${size}x${size} $p/${name}-${size}.png
	echo "$size $pos ${name}-${size}.png" >> $p/$name.txt
done

sudo xcursorgen $p/$name.txt ../cursors/$name

if [[ $2 == "" ]]; then
	rm -f $p/$name-*.png
	rm -f $p/$name.txt

elif [[ $2 != "save" ]]; then
	continue

fi
