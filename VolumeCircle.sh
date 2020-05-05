#My own
#Needs ARCfont
osascript -e '

set vol to output volume of (get volume settings)
# Get volume as a percent of 51 characters
set ang to round((vol/100) * 51)
# Get the character to represent the angle the volume circle should be at
get character ang of "abcedfghijklmnopqrstuvwzyzABCDEFGHIJKLMNOPQRSTUVWXY"
'
