#! /bin/bash 

path=$1

# resize rendering pictures
for i in $(find rendering_pics/$path -size +300k -print); do
    fileName=$(echo $i | awk -F'/' '{print $NF}')
    echo $fileName
    /home/juzou/documents/matrixzj.github.io/script/resize_pic.py rendering_pics/$fileName
    mv -f "rendering_pics/resized_$fileName" "rendering_pics/$fileName"
done
