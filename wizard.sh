#!/usr/bin/env bash
function Inicio() {
 clear && echo -e -n "             \\033[32m ,,,,,,
         . o#º9NWO6º:º-,o,  \\033[0m {A}-> Gerenciamento local \\033[32m
       . oHª:HH$º ªº º -¨R-o,
      d MMM¨ªªº¨º      .oMªHM?.
    , MMMMº          ªHLbd< ?&H\\
   . :MH .ª           \` MM  MM&b \\033[0m {B}-> Monitoramento \\033[32m
  .  ª¨H             &W%MMMMMMMH.
  º     dboa        MM%IMMMMMMMM.
  º    dMMMMMMb      ¨M%LMMMMMMP.
  º     qMMMMMMP        ¨L%MMMP , \\033[0m{C}-> Utilitários \\033[32m
   .   \`#MMMMM           I%6P ,
    º   \`MMMPª           %A¨\\,  
     º    :MM             .-N,
      º.   \`#?.   .       .,º \\033[0m {X}-> Sair \\033[32m
         -.   .         .-
           ºº-.oo,oo.-ºº \\033[0m "
  read -n1 -r OPT && echo -e "\\n"

   case $OPT in
     a|A) Admin ;;
     b|B) Guarda ;;
     c|C) Util ;;
     x|X) clear && exit ;;
     *) echo -e "         \\033[41mOpção inválida! \\033[0m" && sleep 3 && Inicio ;;
   esac
 }

function Admin() {
 clear && echo -e "\\n {A} Configurar apelidos para comandos \\n {B} Instalar recursos (pacotes) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r ADM && echo -e "\\n"

   case $ADM in
     a|A) Alias ;;
     b|B) Instalar ;;
     z|Z) Inicio ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Admin ;;
   esac
 }

function Alias() {
 clear && echo -e "\\n \\033[1mConfigurando...\\033[0m \\n" && grep -Rni ~/.bashrc -e "atualizar" && echo -e "\\n  Comando 'atualizar' está configurado! \\n" || echo "alias atualizar='sudo apt update && sudo apt upgrade'" >> ~/.bashrc && echo -e "\\n  Comando 'atualizar' foi configurado! \\n" && grep -Rni ~/.bashrc -e "buscar" && echo -e "\\n  Comando 'buscar' está configurado! \\n" || echo "alias buscar='sudo updatedb && locate'" >> ~/.bashrc && echo -e "\\n  Comando 'buscar' foi configurado! \\n" && grep -Rni ~/.bashrc -e "listar" && echo -e "\\n  Comando 'listar' está configurado! \\n" || echo "alias listar='ls -lt'" >> ~/.bashrc && echo -e "\\n  Comando 'listar' foi configurado! \\n" && grep -Rni ~/.bashrc -e "monitorar_log" && echo -e "\\n  Comando 'monitorar_log' está configurado! \\n" || echo "alias monitorar_log='sudo tail -f /var/log/syslog'" >> ~/.bashrc && echo -e "\\n  Comando 'monitorar_log' foi configurado! \\n" && grep -Rni ~/.bashrc -e "placa_de_video" && echo -e "\\n  Comando 'placa_de_video' está configurado! \\n" || echo "alias placa_de_video='sudo lshw -C video'" >> ~/.bashrc && echo -e "\\n  Comando 'placa_de_video' foi configurado! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Admin
 }

function Instalar() {
 clear && echo -e "\\n Os seguintes pacotes serão instalados: chkkrootkit - figlet - lshw - neofetch 
 toilet - torbrowser-launcher - whois \\n"
 echo -n "  Instalar pacotes agora? [S/N] "
  read -n1 -r PACOTES && echo -e "\\n"
   
   case $PACOTES in
     s|S) sudo apt install chkrootkit figlet lshw neofetch toilet torbrowser-launcher whois && echo -e "\\n   Processo de instalação \\033[5mconcluído\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Admin ;;
     n|N) Admin ;;
     *) echo -e "   \\033[41mOpção inválida!\\033[0m" && sleep 3 && Instalar ;;
   esac
 }
 
function Guarda() {
 clear && echo -e "\\n {A} Verificar SO em busca por rootkits \\n \\n {Z} Retornar ao menu anterior \\n"
  echo -n " => Escolha uma das opções: "
   read -n1 -r GUARDA && echo -e "\\n"

   case $GUARDA in
     a|A) [ -d /usr/lib/chkrootkit ] && sudo chkrootkit && echo -e "\\n  Varredura \\033[5mconcluída\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Guarda || echo -e "\\n O pacote chkrootkit \\033[5mnão\\033[0m está instalado! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Guarda ;;
     z|Z) Inicio ;;
     *) echo -e "\\n  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Guarda ;;
   esac
 }
 
function Util() {
 clear && echo -e "\\n {A} Montar imagem ISO \\n {B} Testar ferramentas para banners de texto ASCII
 {C} Verificar automaticamente hash MD5 ou SHA-256 \\n \\n {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r UTIL && echo -e "\\n"

   case $UTIL in
     a|A) Iso ;;
     b|B) Banners ;; 
     c|C) Hash ;;
     z|Z) Inicio ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Util ;;
   esac
  }
  
function Banners() {
 clear && echo -e "\\n {A} FIGlet \\n {B} TOIlet \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r ASCII && echo -e "\\n"
  
   case $ASCII in
     a|A) [ -e /usr/bin/figlet-figlet ] && figlet -f slant -c -k FIGlet && echo -e "\\n Teste \\033[5mconcluído\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Banners || echo -e "  O pacote FIGlet \\033[5mnão está instalado\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Banners ;;
     b|B) [ -e /usr/bin/toilet ] && toilet -kf script --metal " The Metal" && echo -e "\\n Teste \\033[5mconcluído\\033[0m! \\n" && read -n1 -r -s -p "Pressione uma tecla para continuar..." && Banners || echo -e "  O pacote TOIlet \\033[5mnão está instalado\\033[0m! \\n" && read -n1 -r -s -p "Pressione uma tecla para continuar..." && Banners ;;
     z|Z) Util ;;
     *) echo -e "\\n  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Banners ;;
   esac
 }
  
function Iso() {
 clear && echo -e -n "\\n    \\033[1mCriar pasta para montar a imagem ISO\\033[0m \\n \\n => Digite o nome da pasta: "
  read -r PASTA
 echo -e -n "\\n  O nome da pasta é \\033[46m$PASTA\\033[0m? [S/N] "
  read -n1 -r NOME_PASTA && echo -e "\\n"
   
   case $NOME_PASTA in
     s|S) [ -d /mnt/"$PASTA" ] && echo -e "   Existe uma pasta com o nome escolhido! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Montagem || sudo mkdir /mnt/"$PASTA" && Montagem ;;
     n|N) Iso ;;
     *) echo -e "   \\033[41mOpção inválida!\\033[0m" && sleep 3 && Iso ;;
   esac
 }

function Montagem() {
 clear && echo -e -n "\\n    \\033[1mMontar a imagem ISO\\033[0m \\n
 => Digite o nome completo do arquivo .iso: "
  read -r NOME_ISO
 echo -e -n "\\n  => O arquivo \\033[36m$NOME_ISO\\033[0m \\n  encontra-se em \\033[46m/home/$USER/Downloads\\033[0m? [S/N] "
  read -n1 -r MONTAR && echo -e "\\n"
     
   case $MONTAR in
     s|S) sudo mount -o loop /home/"$USER"/Downloads/"$NOME_ISO" /mnt/"$PASTA" && echo -e "\\n   Processo \\033[5mconcluído\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Util ;;
     n|N) sudo rm -rf /mnt/"$PASTA" && echo -e "   Processo \\033[5mabortado\\033[0m! \\n" && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Util ;;
     *) echo -e " \\033[41mOpção inválida!\\033[0m \\n" && sleep 3 && Iso ;;
   esac
}

function Hash() {
 cd ~/Downloads && clear && echo -e "\\n {A} MD5 \\n {B} SHA-256 \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r UTIL && echo -e "\\n"

   case $UTIL in
     a|A) for file in *.md5; do md5sum -c "$file"; done && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Hash ;;
     b|B) for file in *.sha256; do sha256sum -c "$file"; done && read -n1 -r -s -p " Pressione uma tecla para continuar..." && Hash ;;
     z|Z) Util ;;
     *) echo -e "\\n  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Hash ;;
   esac
  }

 Inicio
