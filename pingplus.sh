#!/bin/bash

echo -e "IP \t Ping \n"
RESULT="64"
#en equipos se tiene el listado de los equipos a verificar
for C in $(cat equipos)
  do
    PINGPROBE="No"
    PING=$(ping -w 1 $C  | grep 64 | awk '{print $1}')
    if [ "$RESULT" != "$PING" ]
        then
             PINGPROBE="No" #ping failed
       else
            PINGPROBE="Ok"
     fi
 echo -e "$C \t $PINGPROBE \n"
done