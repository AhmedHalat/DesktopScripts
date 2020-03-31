#My own
#Needs ARCfont
osascript -e '

set vol to output volume of (get volume settings)
set axe to round((vol/100) * 51)
get character axe of "abcedfghijklmnopqrstuvwzyzABCDEFGHIJKLMNOPQRSTUVWXY"
'
