# NMAP
# nmap scan for all ports
alias prescan='sudo nmap -v -T4 -p-'
# detailed nmap scan for the port(s,) and ip provided
alias postscan='sudo nmap -v -T4 -A -p'

# Nikto
# nikto host enumeration
nicto() {
	nikto -h "$1"
}

# Directory Busting
# run gobuster against a ip or hostname
# using raft medium dirs lowercase
busthttpdir() {
	gobuster -t 40 dir -u http://"$1" -w /usr/share/wordlists/dirb/common.txt -x txt,php,html
}

# SMB Enumeration
# list smb anon
smbanonlist() {
	smbclient -N -L \\\\"$1"\\
}
# list smb user
smbuserlist() {
	smbclient -L \\\\"$1"\\ -U "$2"
}
# access smb anon
smbanonaccess() {
	smbclient -N \\\\"$1"\\"$2"
}
# access smb user
smbuseraccess() {
	smbclient \\\\"$1"\\"$2" -U "$3"
}

# pyHTTP
# launch python http server
pyhttpserver() {
	python3 -m http.server "$1"
}

#OpenVPN
# openvpn aliases
alias ovpnhtb='sudo openvpn ovpn/hackthebox.ovpn'
alias ovpnthm='sudo openvpn ovpn/tryhackme.ovpn'
# nmap scan for all ports
alias prescan='sudo nmap -v -T4 -p-'
# detailed nmap scan for the port(s,) and ip provided
alias postscan='sudo nmap -v -T4 -A -p'
# delete line in /etc/hosts containing first argument
losehostsbyname() {
	sudo sed -i /"$1"/d /etc/hosts
}

# UFW
# add allow in rule for IP ($1) and Port ($2)
allowufwIN() {
	#do things with parameters like $1 such as
	sudo ufw allow from "$1" proto tcp to any port "$2"
}
# list active ufw rules by number
alias listufw='sudo ufw status numbered'
# delete active ufw rule by number
deleteufw() {
	sudo ufw delete "$1" 
}

# Hosts File
# output contents of /etc/hosts to screen
alias showhosts='sudo cat /etc/hosts'
# add new entry to hosts IP ($1) hostname ($2)
addhosts() {
	sudo -- sh -c "echo '"$1"	"$2"' >> /etc/hosts"
}

# Misc
# alias for ll
alias ll='ls -lah'

# identify running process by name
identifyprocess() {
	ps ax | grep "$1"
}
