#!/usr/bin/env bash

if [ -d "/lib/cgi-bin/daten/ais" ];then
  echo "Es gibt ein verzeichnes /lib/cgi-bin/daten/ais"
else
  echo "Verzeichens werden in /lib/cgi-bin/ erstellt"
  mkdir /lib/cgi-bin/daten/
  mkdir /lib/cgi-bin/daten/ais
  echo "Verzeichnes in /lib/cgi-bin/daten/ais würde erforlgreich erstellt" 
fi

echo "Es wird daten gesammelt"
ncat rhodes 8082 | while IFS='|' read -r datum type rest;do
  echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-0.log
  
  if test "$type" = 1;then
    echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-1.log
  fi
  if test "$type" = 3;then
    echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-3.log
  fi
  if test "$type" = 5;then
    echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-5.log
  fi
  if test "$type" = 18;then
    echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-18.log
  fi
  if test "$type" = 24;then
    echo "$datum|$type|$rest" >> /lib/cgi-bin/daten/ais/ais-type-24.log
  fi

done
