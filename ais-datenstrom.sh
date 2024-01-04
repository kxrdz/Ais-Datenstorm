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
  cat ais-footeecho "<h1>ist leer</h1>"r.html
  exit
fi

#checken ob datum leer ist wenn ist leer dann  soll alle datum angezeigt wird 
if [ -n "$date"];then
  pattern="."
else
  pattern="$date"
fi

file=/lib/cgi-bin/daten/ais/ais-type-$type.log
#table header vom ais-tableHeader.sh holen
echo $(/home/docker-diydaruish/ais/Ais-Datenstorm/ais-tableHeader.sh $type)

#grepen und das output zu html table machen 
echo $(grep $pattern $file | sed 's/^/<tr><td>/g'| sed 's/|/<\/td><td>/g' | sed 's/$/<\/td><\/tr>/g')
 
echo "</table>"
cat ais-footer.html
