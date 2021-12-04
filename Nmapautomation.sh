#! /bin/bash



echo ".____________________________________."
echo "|                                    |"
echo "|          NmapAutomation            |"
echo "|____________________________________| "
echo "                           By-Rishabh"


echo "Choose the type of scan you want to perform : "
echo "1-ARP Ping Scan"
echo "2-ICMP Echo Scan"
echo "3-TCP SYN Scan"
echo "4-TCP ACK Scan"
echo "5-IP Protocol Ping Scan"
echo "6-TCP Connect/Full Open Scan"
echo "7-Stelth Scan"
echo "8-Xmass Scan"
echo "9-Service Discovery Scan"
echo "10-OS Scanning/Banner Grrabbing"
echo "11-SYN/FIN Scan with IP Fragments"
echo "12-TCP Null Scan"
echo "13-FIN Scan"
echo "14-TCP Window Scan"
echo "15-SCTP Cookie Echo Scan"
echo "16-TCP Maimon Scan"
echo "17-Port Scanning"

read scanchoice
echo "Enter the IP Address/IP Range/Domain to perform the scan on : "
read ip

#yet to write a code to get port numbers also here
case $scanchoice in
	1)sudo nmap -sn -PR $ip	;;
	2)sudo nmap -sn -PE $ip  ;;
	3)sudo nmap -sn -PS $ip  ;;
	4)sudo nmap -sn -PA $ip  ;;
	5)sudo nmap -sn -PO $ip  ;;
	6)sudo nmap -sT -v $ip ;;
	7)sudo nmap -sS -v $ip ;;
	8)sudo nmap -sX -v $ip ;;
	9)sudo nmap -sV $ip ;;
	10)sudo nmap -O $ip ;;
	11)sudo nmap -sS -T4 -A -F -v $ip ;;
	12)sudo nmap -sN $ip ;;
	13)sudo nmap -sF $ip ;;
	14)sudo nmap -sW $ip ;;
	15)sudo nmap -sZ $ip ;;
	16)sudo nmap -sM $ip ;;
	17)echo "Enter the Port-number/Port-range to perform the on :"
		read port
		nmap -p $port $ip
		;;
	*)echo "Select a valid option from the list given above!!"

esac