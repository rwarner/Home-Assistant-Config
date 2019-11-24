#!/bin/bash 

# https://community.ui.com/questions/Having-fun-with-Access-Point-LED/63f50909-b8dd-4c55-b80b-4403379408c6
# Reformatted in a non-single line bash script
# Added comments to elaborate on script use

# Advisable to set SSH key on Unifi Controller: 
# ssh-keygen -t rsa && cat ~/.ssh/id_rsa.pub 
# Add to Unifi Controller settings -> Device Authentication -> SSH Keys
# All APs and devices should adopt this authorized key to /etc/dropbear/authorized_keys


#Unifi Hardware Username 
USERNAME=admin  
iplist=()


# Show how to use script appropriately
usage() {
    echo "Usage: $0 [-i <ip address>] [-s <on|off|Number of Pattern>]" 1>&2;
    exit 1;
}

# Function to read list of IP's from iplist.cfg
getArray() {
    ip=0 
    while read line; do # read a line
        iplist[ip]=$line
        ip=$(($ip +1))         
    done < $1 
}  


# Walk through input of shell call
while getopts ":i:s:b:" o; do
 case "${o}" in
    i)
        i=${OPTARG} 
	;; 
    s)  
        s=${OPTARG} 
	;;  
    *)
 	usage
 	;;
    esac 
done 

shift $((OPTIND-1))


# If setting the LED pattern is empty then print usage
if [ -z "${s}" ]; then         
 	usage 
fi  


# Function to set LED to specified AP
led_SetPattern() { 		 
	ssh $USERNAME@${i} "echo $pattern > /proc/gpio/led_pattern; exit";
}  

# Get IP address of AP or from cfg file
if [ ! -z "$i" ]; then 
    iplist+=("$i") 
else 	
    getArray "iplist.cfg"
fi 

#RegEx to test if $s is Numeric
re='^[0-9]+$'

# Iterate through input, if we dont have a match print usage
for i in "${iplist[@]}" 	
do 			
    if [ "$s" == "off" ]; then
        pattern=0
    elif [ "$s" == "on" ]; then 
	pattern=1
    elif [[ $s =~ $re ]]; then 					
        pattern=$s		
    else		
	usage
    fi 			
	 		
    led_SetPattern $i $pattern 
    
done
