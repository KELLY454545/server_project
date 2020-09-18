#!/bin/bash



USERNAME=$( logname )


CHEMIN_FICHIERS='.'
TO_CRYPT="/home/$USERNAME/server_project/toCrypt"
CRYPTED="/home/$USERNAME/server_project/crypted"
TO_DECRYPT="/home/$USERNAME/server_project/toDecrypt"
DECRYPTED="/home/$USERNAME/server_project/Decrypted"

while IFS=$'\n' read fichier
do
	${CHEMIN_FICHIERS}/encrypter.py $fichier ${DECRYPTED}/${fichier}.crypt
done <<<$(ls ${TO_CRYPT}/) 


 

