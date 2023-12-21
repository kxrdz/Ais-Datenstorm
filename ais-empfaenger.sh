#!/usr/bin/env bash

ncat rhodes 8082 | while IFS='|' read -r datum type rest;do
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
