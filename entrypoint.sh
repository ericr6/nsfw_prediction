#!/bin/sh
echo "args 1 is " $1

wget $1
input=$(basename $1)
cp $input /iexec_out/.

#Download the model as a dataset
ls /iexec_in
cp /iexec_in/nsfw_model.zip /.
unzip nsfw_model.zip

#wget https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130_960_720.jpg
#wget https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg

echo "file download from " $1
echo "file name is " $input
python classify_nsfw.py $input >>/iexec_out/result.log
echo "file download from " $1
echo "file name is " $input
