ffmpeg -framerate .5 -i c%03d.png -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p vid-$(pwd|sed 's/.*\///g')$(date +'%H%M').mp4
