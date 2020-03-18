#!/bin/sh
function passbyq() {
value1="${1}"
value2="${2}"

curl -k "Message get way URL and provide mobile number"

curl -k "Message get way URL and provide mobile number"



}

   mem=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
   perM=$(echo $mem |cut -d'%' -f1)
   T="60.00"
   if (( $(echo "$perM > $T" | bc -l) ))
   then

   bs="Memory"  
   passbyq "$mem" "$bs"
   fi

  Load=$(top -bn1 | grep load | awk '{printf "%.2f", $(NF-2)}')
  L="5.00" 
  if (( $(echo "$Load > $L" | bc -l) ))
  then

   LS="CPU"
   passbyq "$Load" "$LS" 
  fi

