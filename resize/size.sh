p=$(dirname $(realpath $0))

cd $p

file=$1

read -p "name: " name

for size in 16 24 32 48; do
	magick $file -filter box -define filter:support=0.5 -resize ${size}x${size} $(dirname $file)/${name}-${size}.png
done
