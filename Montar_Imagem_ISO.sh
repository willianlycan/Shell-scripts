#!/usr/bin/env bash
# Testado nas distros BigLinux, SparkyLinux e Trisquel
function ISO() {
 echo -e -n '''\n  [ Criar pasta para montar a imagem ISO ]
  
 => Esolha o nome da pasta: '''
   read PASTA
  echo -e -n "\n => O nome da pasta é \033[5m$PASTA\033[0m ? [S/N] "
   read -n1 NOME_PASTA && echo
   case $NOME_PASTA in
   s|S|"") [ -d /mnt/$PASTA ] && echo -e '''\n \033[5mJá existe uma pasta com o nome escolhido!\033[0m 
   
  Indo para o ponto de montagem...''' && Montagem || mkdir /mnt/$PASTA && Montagem ;;
   n|N|"") ISO ;;
   *) echo -e "\n \033[41mOpção inválida!\033[0m" && ISO ;;
 esac
}

function Montagem() {
 sleep 5
  clear
   echo -e -n '''\n  [ Montar a imagem ISO ]
  
 => Digite o caminho completo para o diretório
    em que o arquivo .iso está: '''
     read DIR_ISO
   echo -e -n "\n => Digite o nome completo do arquivo .iso: "
     read NOME_ISO
   echo -e -n "\n => A iso \033[5m$NOME_ISO\033[0m encontra-se em \033[46m$DIR_ISO\033[0m ? [S/N] "
     read -n1 MONTAR && echo
     case $MONTAR in
     s|S|"") mount -o loop $DIR_ISO/$NOME_ISO /mnt/$PASTA ; echo -e "\n Processo concluído!\n" && Sair ;;
     n|N|"") rm -rf /mnt/$PASTA ; echo -e "\n Processo abortado!\n" && Sair ;;
     *) echo -e "\n \033[41mOpção inválida!\033[0m\n" ; rm -rf /mnt/$PASTA && Sair ;;
 esac
}

function Sair(){
 echo -n " Sair? [S/N] "
  read -n1 SAIR
  case $SAIR in
  s|S|"") clear && exit ;;
  n|N|"") ISO ;;
  *) echo -e "\n \033[41mOpção inválida!""\033[0m\n" ; exit ;;
 esac 
}
ISO
