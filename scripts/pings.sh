#!/bin/bash

is_alive_ping()
{
  ping -c 1 -w 1 $1 > /dev/null
  [ $? -eq 0 ] && echo $i Alive
}

#for i in 172.20.10.{1..254}
for i in 192.168.{0..20}.{1..254}
#for i in 192.168.1.{1..254}
#for i in 165.26.{78..79}.{1..254}
#for i in {165..192}.{26..168}.{1..79}.{1..10}
do
is_alive_ping $i &
done