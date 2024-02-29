#!/bin/bash
id_current=$(cat ~/.config/conky/Mimosa/current/current.txt)
id_new=`playerctl -p spotify metadata mpris:trackid`

if [ "$id_new" != "$id_current" ]; then
		echo $id_new > ~/.config/conky/Mimosa/current/current.txt
        curl -o ~/.config/conky/Mimosa/current/current.jpeg `playerctl -p spotify metadata mpris:artUrl`
fi