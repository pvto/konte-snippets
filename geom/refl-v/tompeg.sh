ffmpeg -framerate 25 -i b%03d.png -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p refl.mp4
