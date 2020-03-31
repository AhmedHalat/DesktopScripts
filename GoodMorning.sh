#!/bin/bash
#found online, edited
hour=`date +"%H"`
day=`date +"%e" | sed -E 's/([^1]1)$/\1st/'| sed -E 's/([^1]2)$/\1nd/' |sed -E 's/([^1]3)$/\1rd/' | sed -E 's/([0-9])$/\1th/' | sed -e 's/^[ \t]*//'`
dayw=`date +"%A"`
monthyear=`date +"%B %Y"`

time=`date +"%l:%M" | sed -e 's/^[ \t]*//'`
am_pm=`date +"%p"`

if [ $hour -gt 0 -a $hour -le 2 ]
then
  echo "It's past bedtime."
fi

if [ $hour -gt 2 -a $hour -le 5 ]
then
  echo "It's well past bedtime."
fi

if [ $hour -gt 6 -a $hour -le 12 ]
then
  echo "Good morning."
fi

if [ $hour -gt 12 -a $hour -le 16 ]
then
  echo "Good afternoon."
fi

if [ $hour -gt 16 -a $hour -le 23 ]
then
  echo "Good evening."
fi

date "+%I:%M"
date "+%A"; date "+%d %B %Y"
