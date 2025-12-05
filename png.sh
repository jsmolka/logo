# sudo apt-get install inkscape

setViewBox="select-by-element:svg;object-set-attribute:viewBox,-25 -25 150 150"
setViewBoxWeb="select-by-element:svg;object-set-attribute:viewBox,-50 -50 200 200"  # https://w3c.github.io/manifest/#icon-masks
setFill="select-by-element:path;object-set-property:fill,"

mkdir png
inkscape logo.svg -w 512 -h 512 -b "#242933" --actions="$setViewBox;   $setFill #ebedf2" -o png/light-on-dark.png
inkscape logo.svg -w 512 -h 512              --actions="$setViewBox;   $setFill #ebedf2" -o png/light-on-transparent.png
inkscape logo.svg -w 512 -h 512 -b "#ebedf2" --actions="$setViewBox;   $setFill #242933" -o png/dark-on-light.png
inkscape logo.svg -w 512 -h 512              --actions="$setViewBox;   $setFill #242933" -o png/dark-on-transparent.png
inkscape logo.svg -w 460 -h 460 -b "#242933" --actions="$setViewBox;   $setFill #ebedf2" -o png/github.png
inkscape logo.svg -w 180 -h 180 -b "#242933" --actions="$setViewBoxWeb;$setFill #ebedf2" -o png/apple-touch-icon.png
inkscape logo.svg -w 192 -h 192 -b "#242933" --actions="$setViewBoxWeb;$setFill #ebedf2" -o png/android-chrome-192x192.png
inkscape logo.svg -w 512 -h 512 -b "#242933" --actions="$setViewBoxWeb;$setFill #ebedf2" -o png/android-chrome-512x512.png
