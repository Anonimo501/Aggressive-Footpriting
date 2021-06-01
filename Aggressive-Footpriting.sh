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
read -rsp $'Press enter to continue...\n'
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
#quit
echo " "

echo "Ingrese la IP del sitio"
echo " "
read ip

# Cewl
echo ""
echo "Se esta creando un diccionario con posibles contraseñas con Cewl"
echo "Si en algun momento desea parar la creacion precione ctrl + c"
cewl $url -w Diccionario-Cewl.txt
read -rsp $'Press enter to continue...\n'

# dnsenum
echo ""
echo "Vamos a Enumerar DNS con dnsenum"
gnome-terminal -e "dnsenum $dominio -o dnsenum.$dominio.xml" &
read -rsp $'Press enter to continue...\n'

# theharvester
echo ""
echo "Busquemos Correos!"
theHarvester -d $dominio -l 500 -b google -f $dominio.html
read -rsp $'Press enter to continue...\n'

# metagoofil
#echo ""
#echo "Algo de Metadata"
#metagoofil -d $dominio -t docx,pdf,txt,doc,ppt,xls -l 1000 -n 50 -o $dominio -f metagoofil.$dominio.html
#read -rsp $'Press enter to continue...\n'

# whois
echo ""
echo "Whois"
whois $dominio
read -rsp $'Press enter to continue...\n'

# dnsrecon
echo ""
echo "DNSrecon"
dnsrecon -t axf -d $dominio >> dnsrecon.txt
read -rsp $'Press enter to continue...\n'

# fierce
echo ""
echo "Fierce... Buscando dominios"
fierce --domain $dominio
read -rsp $'Press enter to continue...\n'

echo ""
echo " * Se instalara Infoga para la recoleccion de correos electronicos * "
echo ""
read -rsp $'Press enter to continue...\n'
git clone https://github.com/m4ll0k/Infoga.git && cd Infoga && python setup.py install && python infoga.py --domain $dominio --source all --breach -v 2 --report infoga.$dominio.txt
cd ..
read -rsp $'Press enter to continue...\n'

echo ""
echo " * Se instala Sublist3r para la recopilacion de subdominios * "
echo ""
read -rsp $'Press enter to continue...\n'
git clone https://github.com/aboul3la/Sublist3r.git && cd Sublist3r && sudo pip install -r requirements.txt && python sublist3r.py -d $dominio --output sublister.$dominio.txt

# urlcrazy
echo ""
echo "Acaso estamos Crazy!"
echo ""
echo "No detener el proceso o el script se detendra o Puedes oprimir ctrl + c para omitir este escaneo ya que es el ultimo"
echo ""
urlcrazy -k qwerty -o $dominio.txt $dominio

echo ""
echo "Gracias por usar Aggressive Footpriting"
echo ""
