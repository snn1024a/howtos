#!/bin/bash
ch1="gpiochip0 4"
ch2="gpiochip0 17"
ch3="gpiochip0 18"
ch4="gpiochip0 27"
on_sec=$1
off_sec=$2
cycle_sec=$3
while : ;do
        gpioset $ch1=1;sleep $on_sec;gpioset $ch1=0;sleep $off_sec;
        gpioset $ch2=1;sleep $on_sec;gpioset $ch2=0;sleep $off_sec;
        gpioset $ch3=1;sleep $on_sec;gpioset $ch3=0;sleep $off_sec;
        gpioset $ch4=1;sleep $on_sec;gpioset $ch4=0;sleep $off_sec;
        sleep $cycle_sec
#       gpioset $ch1=0 & gpioset $ch2=0 & gpioset $ch3=0 & gpioset $ch4=0
done