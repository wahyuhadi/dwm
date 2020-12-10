# dwm
- add in .xinitrc _JAVA_AWT_WM_NONREPARENTING=1
```sh
feh --bg-center /home/lemurian/Pictures/Wallpaper/mac.jpg &
./.My-Config/My-DWM/dwm-bar/dwm_bar.sh &
compton --config /home/lemurian/.config/compton/compton.conf &

export _JAVA_AWT_WM_NONREPARENTING=1
amixer set Master unmute
amixer sset 'Master' 100%
exec dwm


```
