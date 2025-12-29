size=$2
to=$3
cd $1

for file in *.png; do
	echo "$file > $size"
	magick $file -resize ${size}x${size} $to/$file_$size
done
