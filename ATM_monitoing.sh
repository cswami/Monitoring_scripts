
#!/bin/bash

luna_client()
{
lunac=$(tail -500 /var/log/pts/middleware/middelwareLogs.log |grep -a "chracter" |awk {'print $2'} |tail -n1)
export old5=`cat /opt/pts/Scripts/luna_client.txt`
if [ -z "$lunac" ]
then
exit 0
else
if [[ "$lunac" == "$old5" ]]
then
exit 0
else
count4=$(less /var/log/pts/middleware/middelwareLogs.log |grep -a "chracter" |awk {'print $2'} |wc -l)

curl -k "Message get way URL and provide mobile number"

curl -k "Message get way URL and provide mobile number"

fi
echo $lunac >  /opt/pts/Scripts/luna_client.txt
fi

}

connection_Refused()
{
connectr=$(tail -500 /var/log/pts/middleware/middelwareLogs.log |grep -a4 " Unable to connect" |grep -a4 "Connection refused (Connection refused)" |grep -a "201" |awk {'print $2'}|tail -n1)
export old2=`cat /opt/pts/Scripts/connection_Refused.txt`
if [ -z "$connectr" ]
then
luna_client
else
if [[ "$connectr" == "$old2" ]]
then
luna_client
else
count3=$(less /var/log/pts/middleware/middelwareLogs.log |grep -a4 " Unable to connect" |grep -a4 "Connection refused (Connection refused)" |grep -a "201" |awk {'print $2'} |wc -l)


curl -k "Message get way URL and provide mobile number"

curl -k "Message get way URL and provide mobile number"

fi
echo $connectr >  /opt/pts/Scripts/connection_Refused.txt
luna_client
fi

}


CBS_null()
{
CBSnull=$(tail -500 /var/log/pts/middleware/middelwareLogs.log |grep -a "CBS===>>>>null" |awk {'print $2'} |tail -n1)
export old1=`cat /opt/pts/Scripts/CBS_null.txt`
if [ -z "$CBSnull" ]
then
connection_Refused
else
if [[ "$CBSnull" == "$old1" ]]
then
connection_Refused
else
count3=$(less /var/log/pts/middleware/middelwareLogs.log |grep -a "CBS===>>>>null" |wc -l)



curl -k "Message get way URL and provide mobile number"

curl -k "Message get way URL and provide mobile number"

fi
echo $CBSnull >  /opt/pts/Scripts/CBS_null.txt
connection_Refused
fi

}

timeout=$(tail -500  /var/log/pts/middleware/middelwareLogs.log |grep -a2 "timeout" |awk {'print $1,$2'} |grep 20 |awk {'print$2'} | tail -n1)
export old=`cat /opt/pts/Scripts/timeout.txt`
if [ -z "$timeout" ]
then
CBS_null
else
if [[ "$timeout" == "$old" ]]
then
CBS_null
else
count1=$(less /var/log/pts/middleware/middelwareLogs.log |grep -a "timeout" |wc -l)
IP1=$(tail -500 /var/log/pts/middleware/middelwareLogs.log  |grep -a2 "timeout" |grep -a "test-channel" |awk {'print $7'} |cut -d '/' -f 2 |cut -d '"' -f 1 |tail -n1)

curl -k "Message get way URL and provide mobile number"

curl -k "Message get way URL and provide mobile number"

fi
echo $timeout >  /opt/pts/Scripts/timeout.txt
CBS_null
fi

