#!/bin/bash
dialog --stdout --title 'Bem-vindo' --yesno 'Voce deseja instalar programas adicional?' 0 0
if [ $? = 1 ]; then
dialog --stdout --title 'Instalacao' --infobox 'Obrigado' 0 0
else
    escolha=$(dialog --stdout --title 'Instalacao' --radiolist 'Qual programa deseja instalar?' 0 0 0 \
    Apache 'Apache' off \
    MySql 'MySql' off \
    Php 'Php' off \
    Google 'Google' off \
    Vscode 'Vscode' off \
    Mariadb 'Mariadb' off \
    Sublime 'Sublime' off )
        if [ $escolha == "Apache" ] ; then
        cd /home/erickson/comandosshell
        ./apache.sh
        fi
        if [ $escolha == "MySql" ] ; then
        cd /home/erickson/comandosshell
        ./mysql.sh
        fi
        if [ $escolha == "Php" ] ; then
        cd /home/erickson/comandosshell
        ./php.sh
        fi
        if [ $escolha == "Google" ] ; then
        cd /home/erickson/comandosshell
        ./google.sh
        fi
        if [ $escolha == "Vscode" ] ; then
        cd /home/erickson/comandosshell
        ./vscode.sh
        fi
        if [ $escolha == "Mariadb" ] ; then
        cd /home/erickson/comandosshell
        ./mariadb.sh
        fi
        if [ $escolha == "Sublime" ] ; then
        cd /home/erickson/comandosshell
        ./sublime.sh
        fi
fi
