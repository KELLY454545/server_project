#!/bin/bash

#creer  deamon et fichier




#eviter le chemin home/root
USERNAME=$( logname )

TO_CRYPT="/home/$USERNAME/server_project/toCrypt"
CRYPTED="/home/$USERNAME/server_project/crypted"
TO_DECRYPT="/home/$USERNAME/server_project/toDecrypt"
DECRYPTED="/home/$USERNAME/server_project/toDecrypt"

CHEMIN_SH="/usr/bin"

mkdir -p TO_CRYPT
mkdir -p CRYPTED
mkdir -p TO_DECRYPT
mkdir -p DECRYPTED

sudo cp service.sh $CHEMIN_SH

printf "%s\n" "[unit]" "" "[service]" "" "[install]" ""
