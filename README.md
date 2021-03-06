

# Useful aliases for bash

Kali is an extremely useful distribution with a lot of powerful tools. But, that doesn't mean there's not a lot of typing involved though!

This bash aliases file has helped save me a lot of typing and I would like to make it available for others to use and improve.

Simply clone the repository (`git clone https://github.com/algernope/.bash_aliases/`)

Copy or move .bash_aliases to your home directory (`cp .bash_aliases ~/.bash_aliases`)

Run source .bash_aliases (`source ~/.bash_aliases`)

Now the bash aliases are ready to use!

The comments in the file explain what the aliases do, but I am listing a reference below as well:
## Table of Contents
- [NMAP](#nmap)
- [HTTP Server Enumeration](#http-server-enumeration)
- [Directory Busting](#directory-busting)
- [SMB Enumeration](#smb-enumeration)
- [pyHTTP](#pyhttp)
- [UFW](#ufw)
- [Hosts File Management](#hosts-file-management)
- [Misc](#misc)

## NMAP

prescan - equivalent of `sudo nmap -v -T4 -p-`

• Usage - prescan 192.168.1.100

postscan - equivalent of `sudo nmap -v -T4 -A -p`

• Usage - postscan 22,80 192.168.1.100
    
# HTTP Server Enumeration

nicto - equivalent of `nikto <ip>`

• Usage - nicto http://192.168.1.100

this one is less about saving typing and more about not forgetting the -h flag :)

# Directory Busting

busthttpdir - equivalent of `gobuster -t 40 dir -u http://"$1" -w /usr/share/wordlists/dirb/common.txt`

• Usage - busthttpdir 192.168.1.100

# SMB Enumeration

smbanonlist - equivalent of `smbclient -N -L \\\\<ip\\`

• Usage - smbanonlist 192.168.1.100
    
smbuserlist - equivalent of `smbclient -L \\\\<ip>\\ -U "<user>"`

• Usage - smbuserlist 192.168.1.100 user
  
smbanonaccess - equivalent of `smbclient -N \\\\<ip>\\<share>`

• Usage - smbanonaccess 192.168.1.100 share
  
smbuseraccess - equivalent of `smbclient \\\\<ip>\\<share> -U "user"`

• Usage - smbuseraccess 192.168.1.100 share user

# pyHTTP

pyhttpserver - equivalent of `python3 -m http.server <port>`

• Usage - pyhttpserver 8080

# OpenVPN

ovpnhtb - equivalent of `sudo openvpn ovpn/hackthebox.ovpn`

• Usage - ovpnhtb
In the home directory, I created a directory "ovpn" and placed the OpenVPN config files in there

ovpnthm - equivalent of `sudo openvpn ovpn/tryhackme.ovpn`

• Usage - ovpnthm

# UFW

allowufwIN - equivalent of `sudo ufw allow from <ip> proto <protocol> to any port <port>`
    The command allows traffic IN to the host on a specific port and protocol (if defined)

• Usage - allowufwIN 192.168.1.100 22
or also - allowufwIN 192.168.1.100 53/udp

listufw - equivalent of `sudo ufw status numbered`

deleteufw - equivalent of `sudo ufw delete <number of rule to delete>`

• Usage - deleteufw 1
  
# Hosts File Management

addhosts - equivalent of `sudo -- sh -c "echo '<ip>      <hostname>' >> /etc/hosts"`

• Usage - addhosts 192.168.1.100 host.name
  
losehostsbyname - equivalent of `sudo sed -i /<ip or hostname>/d /etc/hosts`

• Usage - losehostsbyname host.name

showhosts - equivalent of `sudo cat /etc/hosts`

• Usage - showhosts

# Misc

ll - equivalent of `ls -lah`
    -l flag is to list using the long format
    -a is to list everything (including hidden files/dir)
    -h print human readable values (like 1K 420M 5G etc)
    
identifyprocess - equivalent of `ps ax | grep <string>`

• Usage - identifyprocess python

cpro - uses the `cpro` command to anonymize and/or add timestamps to your shell session.

• Usage - cpro +anon|-anon|+time|-time
