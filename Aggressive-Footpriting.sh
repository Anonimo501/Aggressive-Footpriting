#!/bin/bash

echo " "
echo "		 ▄▄▄        ▄████   ▄████  ██▀███  ▓█████   ██████   ██████  ██▓ ██▒   █▓▓█████      █████▒▒█████   ▒█████  ▄▄▄█████▓ ██▓███   ██▀███   ██▓▄▄▄█████▓ ██▓ ███▄    █   ▄████"
echo "		▒████▄     ██▒ ▀█▒ ██▒ ▀█▒▓██ ▒ ██▒▓█   ▀ ▒██    ▒ ▒██    ▒ ▓██▒▓██░   █▒▓█   ▀    ▓██   ▒▒██▒  ██▒▒██▒  ██▒▓  ██▒ ▓▒▓██░  ██▒▓██ ▒ ██▒▓██▒▓  ██▒ ▓▒▓██▒ ██ ▀█   █  ██▒ ▀█"
echo "		▒██  ▀█▄  ▒██░▄▄▄░▒██░▄▄▄░▓██ ░▄█ ▒▒███   ░ ▓██▄   ░ ▓██▄   ▒██▒ ▓██  █▒░▒███      ▒████ ░▒██░  ██▒▒██░  ██▒▒ ▓██░ ▒░▓██░ ██▓▒▓██ ░▄█ ▒▒██▒▒ ▓██░ ▒░▒██▒▓██  ▀█ ██▒▒██░▄▄▄"
echo "		░██▄▄▄▄██ ░▓█  ██▓░▓█  ██▓▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒  ▒   ██▒░██░  ▒██ █░░▒▓█  ▄    ░▓█▒  ░▒██   ██░▒██   ██░░ ▓██▓ ░ ▒██▄█▓▒ ▒▒██▀▀█▄  ░██░░ ▓██▓ ░ ░██░▓██▒  ▐▌██▒░▓█  ██"
echo "		 ▓█   ▓██▒░▒▓███▀▒░▒▓███▀▒░██▓ ▒██▒░▒████▒▒██████▒▒▒██████▒▒░██░   ▒▀█░  ░▒████▒   ░▒█░   ░ ████▓▒░░ ████▓▒░  ▒██▒ ░ ▒██▒ ░  ░░██▓ ▒██▒░██░  ▒██▒ ░ ░██░▒██░   ▓██░░▒▓███▀"
echo "		 ▒▒   ▓▒█░ ░▒   ▒  ░▒   ▒ ░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░░▓     ░ ▐░  ░░ ▒░ ░    ▒ ░   ░ ▒░▒░▒░ ░ ▒░▒░▒░   ▒ ░░   ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░▓    ▒ ░░   ░▓  ░ ▒░   ▒ ▒  ░▒   ▒"
echo "		  ▒   ▒▒ ░  ░   ░   ░   ░   ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░░ ░▒  ░ ░ ▒ ░   ░ ░░   ░ ░  ░    ░       ░ ▒ ▒░   ░ ▒ ▒░     ░    ░▒ ░       ░▒ ░ ▒░ ▒ ░    ░     ▒ ░░ ░░   ░ ▒░  ░   ░"
echo "		  ░   ▒   ░ ░   ░ ░ ░   ░   ░░   ░    ░   ░  ░  ░  ░  ░  ░   ▒ ░     ░░     ░       ░ ░   ░ ░ ░ ▒  ░ ░ ░ ▒    ░      ░░         ░░   ░  ▒ ░  ░       ▒ ░   ░   ░ ░ ░ ░   ░"
echo "		      ░  ░      ░       ░    ░        ░  ░      ░        ░   ░        ░     ░  ░              ░ ░      ░ ░                       ░      ░            ░           ░       ░"
echo " 				                                         ░                                                                                                     		   "
echo " "
echo " 										Recolectando Informacion"
echo " "
echo " 										  Created BY Anonimo501"
echo "									    https://youtube.com/c/Anonimo501 "
echo " "

echo " "
echo " "
read -rsp $'Press enter to continue...\n
echo " "
echo "Ingrese la URL del sitio. Ejemplo: https://empresa.com "
echo " "
read url

echo " "
echo "Ingrese un dominio. Ejemplo: empresa.com"
echo " "
read dominio

# Nslookup
echo " "
nslookup $dominio
quit
echo " "

echo "Ingrese la IP del sitio"
echo " "
read ip

# Cewl
gnome-terminal -e "cewl $url -w cewl.posiblespasswords.$dominio.txt"
read -rsp $'Press enter to continue...\n'

# dnsenum
gnome-terminal -e "dnsenum $dominio -o dnsenum.$dominio.xml"
read -rsp $'Press enter to continue...\n'

# theharvester
gnome-terminal -e "theharvester -d $dominio -l 500 -b google -f $dominio.html"
read -rsp $'Press enter to continue...\n'

# metagoofil
gnome-terminal -e "metagoofil -d $dominio -t docx,pdf,txt,doc,ppt,xls -l 1000 -n 50 -o $dominio -f metagoofil.$dominio.html"
read -rsp $'Press enter to continue...\n'

# Navegador - abrir paginas
gnome-terminal -e " firefox www.robtex.com/dns-lookup/$dominio intelx.io/?s=$dominio intelx.io/tools?tab=general intelx.io/tools?tab=filetool dnsdumpster.com virustotal.com/gui/home/url "
read -rsp $'Press enter to continue...\n'
gnome-terminal -e " firefox threatcrowd.org/domain.php?domain=$dominio tools.dnsstuff.com/#dnsReport|type=domain&&value=$dominio "
read -rsp $'Press enter to continue...\n'
gnome-terminal -e " firefox dnschecker.org/all-dns-records-of-domain.php?query=$dominio&rtype=ANY www.lookip.net/ip/$ip mxtoolbox.com/SuperTool.aspx?action=mx%3a$dominio&run=toolpage "
read -rsp $'Press enter to continue...\n'
gnome-terminal -e " firefox webmii.com hunter.io/search/$dominio shodan.io/host/$ip sitereport.netcraft.com/?url=$url centralops.net/co/ www.iana.org/whois?q=$dominio "
read -rsp $'Press enter to continue...\n'
gnome-terminal -e " firefox www.eurodns.com/es/buscar-whois/dominio-auto www.ultratools.com/tools/ipWhoisLookup "
read -rsp $'Press enter to continue...\n'

#gnome-terminal -e " firefox ext:doc OR ext:docx OR ext:rtf OR ext:xls OR ext:xlsx OR ext:csv OR ext:pdf OR ext:txt OR ext:zip OR ext:rar OR ext:7z OR ext:ppt OR ext:pptx OR ext:odt OR ext:ods OR ext:odp $dominio "
#read -rsp $'Press enter to continue...\n'

# whois
whois $dominio
echo " "
read -rsp $'Press enter to continue...\n'

# dnsrecon
xterm -e "dnsrecon -t axfr -d $dominio >> dnsrecon.$dominio.txt"
read -rsp $'Press enter to continue...\n'

# fierce
gnome-terminal -e "fierce -dns $dominio"
read -rsp $'Press enter to continue...\n'

# urlcrazy
gnome-terminal -e "urlcrazy -k qwerty -o $dominio.txt $dominio"
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo " * Se instalara Infoga para la recoleccion de correos electronicos * "
echo " "
read -rsp $'Press enter to continue...\n'
git clone https://github.com/m4ll0k/Infoga.git && cd Infoga && python setup.py install && python infoga.py --domain $dominio --source all --breach -v 2 --report infoga.$dominio.txt
echo " "
read -rsp $'Press enter to continue...\n'

echo " "
echo " * Se instala Sublist3r para la recopilacion de subdominios * "
read -rsp $'Press enter to continue...\n'
git clone https://github.com/aboul3la/Sublist3r.git && cd Sublist3r && sudo pip install -r requirements.txt && python sublist3r.py -d $dominio --output sublister.$dominio.txt
echo " "
read -rsp $'Press enter to continue...\n'

echo " ********************** Gracias por usar el script ********************************* "
