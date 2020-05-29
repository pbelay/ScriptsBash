FILES=./
#Autor: Pablo Belay Fernández
# Script para crear un video cun mp3 dado e unha imaxen fixa. 
for f in $FILES*.mp3
do
 fbname=$(basename "$f" .mp3)
 echo $fbname
 ffmpeg -loop 1 -y -i "$fbname.png" -i "${f}" -shortest -acodec copy -vcodec mjpeg "$fbname.avi"
done

# ffmpeg -loop 1 -y -i avatar.png -i audio_piano.mp3 -shortest -acodec copy -vcodec mjpeg result.avi