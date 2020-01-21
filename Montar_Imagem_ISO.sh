#!/usr/bin/env bash
# Testado nas distros BigLinux, SparkyLinux e Trisquel
function ISO() {
 clear
  echo -e "\n 1º) Criar pasta para armazenar os arquivos extraídos \n"
  echo -n " => Esolha o nome da pasta: "
   read PASTA
  echo -e -n "\n => O nome da pasta é" "\033[5m$PASTA""\033[0m ? [S/N] "
   read NOME_PASTA
    case $NOME_PASTA in
    s|S|"") [ -d /mnt/$PASTA ] && echo -e "\n\033[46m /mnt/$PASTA""\033[0m""\033[5m já existe!""\033[0m" || mkdir /mnt/$PASTA ;;
    n|N|"") ISO ;;
    *) echo -e "\n\033[41mOpção inválida!""\033[0m\n" ; exit ;;
 esac
 
 sleep 3
  echo -e "\n 2º) Montar a imagem iso \n"
  echo " => Digite o caminho completo para o diretório" 
  echo -n "     em que o arquivo .iso está: "
   read DIR_ISO
  echo -e -n "\n => Digite o nome completo do arquivo .iso: "
   read NOME_ISO
  echo -e -n "\n => A iso" "\033[5m$NOME_ISO""\033[0m encontra-se em" "\033[46m$DIR_ISO""\033[0m ? [S/N] "
   read MONTAR
    case $MONTAR in
    s|S|"") mount -o loop $DIR_ISO/$NOME_ISO /mnt/$PASTA ; echo -e "\n Processo concluído!\n" ;;
    n|N|"") rm -rf /mnt/$PASTA ; echo -e "\n Processo abortado!\n" ;;
    *) echo -e "\n\033[41mOpção inválida!""\033[0m\n" ; rm -rf /mnt/$PASTA ;;
 esac

 echo -n "Sair? [S/N] "
  read SAIR
   case $SAIR in
   s|S|"") exit ;;
   n|N|"") ISO ;;
   *) echo -e "\n\033[41mOpção inválida!""\033[0m\n" ; exit ;;
 esac 
}
ISO
