#!/usr/bin/env bash
echo "Content-Type: text/html"
echo
#header vom html
cat ais-header.html

#Query_String vom url holen
type=$(echo "$QUERY_STRING" |cut -d'&' -f1| cut -d'=' -f2 )
date=$(echo "$QUERY_STRING" |cut -d'&' -f2|cut -d'=' -f2 )
#table  tag
echo "<table class="tabele">"

#chencken ob querystring gibt sonst skript wird beendet
if ! echo "$QUERY_STRING" | grep -q '^type=';then
  echo "Sie haben Kein type ausgewählt"
  cat ais-footer.html
  exit
fi

#wenn der benutzer type 1 wählt 
if test "$type" = 1;then
 echo "<tr>
  <th>Datum</th>
  <th>Type</th>
  <th>Mmsi</th>
  <th>Status</th>
  <th>Status text</th>
  <th>Drehen</th>
  <th>Geschwindigkeit</th>
  <th>accuracy</th>
  <th>Lon</th>
  <th>Lat</th>
  <th>Course</th>
  <th>Heading</th>
  <th>Second</th>
  <th>Manöver</th>
  <th>Manöver text</th>
  <th>Raim</th>
  <th>Radio</th>
  </tr>"  
  grep $date daten/ais/ais-type-$type.log | while IFS='|' read -r date type mmsi status status_text turn speed accuracy lon lat course heading scond maneuver maneuver_text raim radio;do
    echo "<tr>
    <td>$date</td>
    <td>$type</td>
    <td>$mmsi</td>
    <td>$status</td>
    <td>$status_text</td>
    <td>$turn</td>
    <td>$speed</td>
    <td>$accuracy</td>
    <td>$lon</td>
    <td>$lat</td>
    <td>$course</td>
    <td>$heading</td>
    <td>$scond</td>
    <td>$maneuver</td>
    <td>$maneuver_text</td>
    <td>$raim</td>
    <td>$radio</td>
    </tr>"
  done
fi
# wenn bemutzer type 3 wählt
if test "$type" = 3;then
  echo "<tr>
  <th>Datum</th>
  <th>Type</th>
  <th>Mmsi</th>
  <th>Status</th>
  <th>Status text</th>
  <th>Drehen</th>
  <th>Geschwindigkeit</th>
  <th>accuracy</th>
  <th>Lon</th>
  <th>Lat</th>
  <th>Course</th>
  <th>Heading</th>
  <th>Second</th>
  <th>Manöver</th>
  <th>Manöver text</th>
  <th>Raim</th>
  <th>Radio</th>
  </tr>"  
   
  grep $date daten/ais/ais-type-$type.log | while IFS='|' read -r date type mmsi status status_text turn speed accuracy lon lat course heading scond maneuver maneuver_text raim radio;do
    echo "<tr>
    <td>$date</td>
    <td>$type</td>
    <td>$mmsi</td>
    <td>$status</td>
    <td>$status_text</td>
    <td>$turn</td>
    <td>$speed</td>
    <td>$accuracy</td>
    <td>$lon</td>
    <td>$lat</td>
    <td>$course</td>
    <td>$heading</td>
    <td>$scond</td>
    <td>$maneuver</td>
    <td>$maneuver_text</td>
    <td>$raim</td>
    <td>$radio</td>
    </tr>"
  done
fi
# type 5
if test "$type" = 5;then
  echo "<tr>
  <th>Datum</th>
  <th>type</th>
  <th>mmsi</th>
  <th>imo</th>
  <th>callsign</th>
  <th>schiffname</th>
  <th>Schifftype</th>
  <th>Schifftype text</th>
  <th>biegen</th>
  <th>zum Heck</th>
  <th>zum Hafen</th>
  <th>nach Steuerbord</th>
  <th>epfd</th>
  <th>eta</th>
  <th>epfd text</th>
  <th>Monat</th>
  <th>tag</th>
  <th>stunden</th>
  <th>Minuten</th>
  <th>Entwurf</th>
  <th>Ziel</th>
  <th>dte</th>
  </tr>"  
 
  grep $date daten/ais/ais-type-$type.log | while IFS='|' read -r date type mmsi imo callsign shipname shiptype shiptype_text to_bow to_stern to_port to_starboard epfd eta epfd_text month day hour minute draught destination dte;do
 echo "<tr>
    <td>$date</td>
    <td>$type</td>
    <td>$mmsi</td>
    <td>$imo</td>
    <td>$callsign</td>
    <td>$shipname</td>
    <td>$shiptype</td>
    <td>$shiptype_text</td>
    <td>$to_bow</td>
    <td>$to_stern</td>
    <td>$to_port</td>
    <td>$to_starboard</td>
    <td>$epfd</td>
    <td>$eta</td>
    <td>$epfd_text</td>
    <td>$month</td>
    <td>$day</td>
    <td>$hour</td>
    <td>$minute</td>
    <td>$draught</td>
    <td>$destination</td>
    <td>$dte</td>
    </tr>"
  done
fi
#type 18 
if test "$type" = 18;then
 echo "<tr>
  <th>Datum</th>
  <th>Type</th>
  <th>Mmsi</th>
  <th>Geschwindigkeit</th>
  <th>accuracy</th>
  <th>Lon</th>
  <th>Lat</th>
  <th>Course</th>
  <th>Heading</th>
  <th>Second</th>
  <th>Raim</th>
  <th>Radio</th>
  </tr>"  
 
  grep date daten/ais/ais-type-$type.log | while IFS='|' read -r date type mmsi speed accuracy lon lat course heading scond raim radio;do
    echo "<tr>
    <td>$date</td>
    <td>$type</td>
    <td>$mmsi</td>
    <td>$speed</td>
    <td>$accuracy</td>
    <td>$lon</td>
    <td>$lat</td>
    <td>$course</td>
    <td>$heading</td>
    <td>$scond</td>
    <td>$raim</td>
    <td>$radio</td>
    </tr>"
  done
fi
#type 24
if test "$type" = 24;then
   echo "<tr>
  <th>Datum</th>
  <th>type</th>
  <th>mmsi</th>
  <th>partno</th>
  <th>part</th>
  <th>Schifftype</th>
  <th>Schifftype text</th>
  <th>callsign</th>
  <th>Mothership mmsi</th>
  <th>vendorid</th>
  <th>model</th>
  <th>serial</th>
  <th>To Bow</th>
  <th>To Stern</th>
  <th>to Port</th>
  <th>To Starboard</th>
  </tr>"  
  grep $date daten/ais/ais-type-$type.log | while IFS='|' read -r date type mmsi partno part shiptype shiptype_text callsign mothership_mmsi vendorid model serial to_bow to_stern to_port to_starboard;do
    echo "<tr>
    <td>$date</td>
    <td>$type</td>
    <td>$mmsi</td>
    <td>$partno</td>
    <td>$part</td>
    <td>$shiptype</td>
    <td>$shiptype_text</td>
    <td>$callsign</td>
    <td>$mothership_mmsi</td>
    <td>$vondorid</td>
    <td>$model</td>
    <td>$serial</td>
    <td>$to_bow</td>
    <td>$to_stern</td>
    <td>$to_port</td>
    <td>$to_starboard</td>
    <td>$raim</td>
    </tr>"
  done
fi
echo "</table>"
cat ais-footer.html
