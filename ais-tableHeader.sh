#!/usr/bin/env bash
type=$1

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
elif test "$type" = 3;then
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
elif test "$type" = 5;then
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
elif test "$type" = 18;then
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
elif test "$type" = 24;then
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
fi
