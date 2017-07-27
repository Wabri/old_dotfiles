#!/bin/bash

dir_backlight="/sys/class/backlight/"
dir_brightness=$dir_backlight$(ls $dir_backlight)"/"
old_brightness=$(cat $dir_brightness"brightness")
max_brightness=$(cat $dir_brightness"max_brightness")
new_brightness_percent=$(($old_brightness*100/$max_brightness $1))
new_brightness=$(($max_brightness*$new_brightness_percent/100))

echo $new_brightness > $dir_brightness"brightness"
