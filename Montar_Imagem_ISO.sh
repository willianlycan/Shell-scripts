#!/bin/sh
# Testando nas distros BigLinux, SparkyLinux e Trisquel
ISO() {
clear
echo
echo " 1º) Criar pasta para armazenar os arquivos extraídos"
echo ""
echo -n " => Esolha o nome da pasta: "
read PASTA
echo
echo -n " => O nome da pasta é" "\033[5m$PASTA""\033[0m ? [S/N] "
read NOME_PASTA
echo
case $NOME_PASTA in
    s|S|"") mkdir /mnt/$PASTA ;;
    n|N|"") ISO ;;
    *) echo "Opção inválida" && ISO ;;
esac
echo " 2º) Montar a imagem iso"
echo ""
echo -n " => Digite o caminho completo para o diretório em que o arquivo .iso está: "
read DIR_ISO
echo
echo -n " => Digite o nome completo do arquivo .iso: "
read NOME_ISO
echo
echo -n " => A iso" "\033[5m$NOME_ISO""\033[0m encontra-se em" "\033[46m$DIR_ISO""\033[0m ? [S/N] "
read MONTAR
echo
case $MONTAR in
    s|S|"") mount -o loop $DIR_ISO/$NOME_ISO /mnt/$PASTA && echo "" && echo "Processo concluído!" ;;
    n|N|"") rm -rf /mnt/$PASTA && echo "Processo abortado!" ;;
    *) echo "Opção inválida, tente novamente!" ;;
esac
echo
echo -n " Sair? [S/N] "
read SAIR
echo
case $SAIR in
    s|S|"") exit ;;
    n|N|"") ISO ;;
    *) echo "Opção inválida" && ISO ;;
esac
}
ISO
