#!/bin/sh

wget https://modeldepot.io/mikeshi/yahoo-open-nsfw?md-download-model=true -O nsfw_model.zip
unzip ./nsfw_model.zip

wget https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130_960_720.jpg
wget https://cdn.pixabay.com/photo/2018/01/13/19/39/fashion-3080644_960_720.jpg

python classify_nsfw.py
