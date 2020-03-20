#!/usr/bin/env bash
#Testado no BigLinux
function Menuini() {
clear 
 [ -e /bin/firefox ] || echo -e '''  \033[31mFirefox \033[34mBrowser\033[0m \033[5mnão está instalado! \033[0m'''
 [ -e /bin/lutris ] || echo -e '''\n  A Plataforma de jogos \033[33mLutris\033[0m \033[5mnão está instalada! \033[0m'''
 [ -e /bin/wine ] || echo -e '''\n  \033[31m\033[1mW\033[32mi\033[33mn\033[34me \033[0m \033[5mnão está instalado! \033[0m\n'''

 echo -e ''' ----------------------------------------------
    \033[1mJogos no Linux Ubuntu e derivados\033[0m
 ----------------------------------------------
 {A}-> Baixar e instalar jogos                       
 {B}-> Baixar e instalar recursos para gameplay
 {C}-> Jogar no navegador
 {D}-> Play games
 {E}-> Sair                                     
 ----------------------------------------------\n'''
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTION && echo

   case $OPTION in
     a|A|"") Joojs ;;
     b|B|"") Gameplay ;;
     c|C|"") Firefox ;;
     d|D|"") TermExec ;;
     e|E|"") clear && exit ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Menuini ;;
   esac
 }

function Joojs() {
clear && echo -e ''' -------------------------------
 {A}-> Ação
 {B}-> Arcade
 {C}-> Aventura
 {D}-> Educativos
 {E}-> Estratégia
 {F}-> Multiplayer online
 {G}-> RPG
 {H}-> Simuladores
 {I}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 OPTION2 && echo
  
   case $OPTION2 in
     a|A|"") Action ;;
     b|B|"") Arcade ;;
     c|C|"") Adventure ;;
     d|D|"") Educ ;;
     e|E|"") Estrategia ;;
     f|F|"") MultiOn ;;
     g|G|"") RPG ;;
     h|H|"") Simuladores ;;
     i|I|"") Menuini ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Joojs ;;
   esac
 }
  
function Action() {
clear && echo -e ''' -------------------------------
 {A}-> Luta
 {B}-> Plataforma
 {C}-> Sobrevivência
 {D}-> Stealth (ação furtiva)
 {E}-> Survival Horror (terror)
 {F}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTION4 && echo

   case $OPTION4 in
     a|A|"") Lutinha ;;
     b|B|"") Plataforma ;;
     c|C|"") Survival ;;
     d|D|"") TDM ;;
     e|E|"") Terror ;;
     f|F|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Action ;;
   esac
 }

function Lutinha() {
clear && echo -e ''' ----------------------------------------
 {A}-> Bootfighter Windom XP sp-2
 {B}-> Terrordrome: Rise of the Boogeyman
 {C}-> Retornar ao menu anterior
 ----------------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 OPTIONX && echo

   case $OPTIONX in
     a|A|"") [ -e /home/$USER/Downloads/Bootfighter_Windom_XP_sp-2.NET_v1.031_[mirror_moon].exe ] && wine /home/$USER/Downloads/Bootfighter_Windom_XP_sp-2.NET_v1.031_[mirror_moon].exe && Lutinha ||  echo -e '''\n  O instalador do jogo \033[46mBootfighter Windom XP sp-2\033[0m \033[5mnão\033[0m foi encontrado! 
     
  Por favor, baixe o instalador na página que abrirá em seu navegador.\n''' && sleep 5 && firefox https://baixar.freedownloadmanager.org/Windows-PC/Bootfighter-Windom-XP-sp-2/GRATUITO-1.031.html && Lutinha ;;
     b|B|"") [ -e /home/$USER/Downloads/TRDM-Linux-Mac-2_10_3.exe ] && wine /home/$USER/Downloads/TRDM-Linux-Mac-2_10_3.exe && Lutinha ||  echo -e '''\n  O instalador do jogo \033[46mTerrordrome: Rise of the Boogeyman\033[0m para Linux \033[5mnão\033[0m foi encontrado! 
     
  Por favor, baixe o instalador na página que abrirá em seu navegador.\n''' && sleep 3 && firefox http://terrordrome-thegame.com/download && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lutinha ;;
     c|C|"") Action ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Lutinha ;;
   esac
 }

function Plataforma() {
clear && echo -e ''' -------------------------------
 {A}-> Cows Revenge
 {B}-> Frogatto
 {C}-> Mr. Rescue
 {D}-> reTux
 {E}-> SuperTux
 {F}-> The Legend of Edgar
 {G]-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 PLATAFORMA && echo

   case $PLATAFORMA in
     a|A|"") [ -e /home/$USER/Downloads/CowsRevenge.x86_64 ] && cd ~/Downloads && chmod +x CowsRevenge.x86_64 && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo -e '''\n  O arquivo \033[46mCowsRevenge.x86_64\033[0m \033[5mnão\033[0m foi baixado! 
     
  Por favor, baixe o arquivo na página que abrirá em seu 
  navegador.\n''' && sleep 3 && firefox https://pipoypipagames.itch.io/cows-revenge && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma ;;
     b|B|"") [ -e /usr/games/frogatto ] && echo -e '''\n  Frogatto \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo && sudo apt install frogatto && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma ;;
     c|C|"") [ -e /usr/games/mrrescue ] && echo -e '''\n  Mr. Rescue \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo && sudo apt install mrrescue && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma ;;
     d|D|"") [ -e /home/$USER/Downloads/retux-1.3.6-linux-gnu-x86_64/retux ] && echo -e '''\n  O diretório do jogo reTux \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo && [ -e /home/$USER/Downloads/retux-1.3.6-linux-gnu-x86_64.tar.gz ] && cd /home/$USER/Downloads && tar -vzxf retux-1.3.6-linux-gnu-x86_64.tar.gz && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || cd /home/$USER/Downloads && wget http://download.savannah.gnu.org/releases/retux/1.3/retux-1.3.6-linux-gnu-x86_64.tar.gz && tar -vzxf retux-1.3.6-linux-gnu-x86_64.tar.gz && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma ;;
     e|E|"") [ -e home/$USER/Games/supertux/SuperTux_2-v0.6.0.glibc2.14-x86_64.AppImage ] && echo -e '''\n  SuperTux \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/supertux && Plataforma ;;
     f|F|"") [ -e /usr/games/edgar ] && echo -e '''\n  The Legend of Edgar \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || echo && [ -e /home/$USER/Downloads/edgar-1.31-1.x86_64.deb ] && sudo dpkg -i /home/$USER/Downloads/edgar-1.31-1.x86_64.deb && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma || cd /home/$USER/Downloads && wget https://github.com/riksweeney/edgar/releases/download/1.31/edgar-1.31-1.x86_64.deb && sudo dpkg -i edgar-1.31-1.x86_64.deb && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Plataforma ;;
     g|G|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Plataforma ;;
   esac
 }

function Survival() {
clear && echo -e ''' --------------------------------
 {A}-> Minetest
 {B}-> Retornar ao meunu anterior
 --------------------------------\n'''
 echo -n " => Escolha uma das opções: "
   read -n1 SOBREVIVER && echo

   case $SOBREVIVER in
     a|A|"") [ -e /usr/games/minetest ] && echo -e '''\n  Minetest \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Survival || echo && sudo apt install minetest* && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Survival ;;
     b|B|"") Action ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Survival ;;
   esac
 }
 
function TDM() {
clear && echo -e ''' ----------------------------------------------
 The Dark Mod (Ação furtiva em primeira pessoa)
 ----------------------------------------------\n
 {A}-> Instalação via Lutris
 {B}-> Retornar ao menu anterior\n
 ----------------------------------------------\n'''
 echo -n " => Escolha uma das opções: "
   read -n1 TDMX && echo

   case $TDMX in
     a|A|"") [ -e /home/$USER/Games/the-dark-mod/thedarkmod.x64 ] && echo -e '''\n  The Dark Mod \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TDM || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/the-dark-mod && TDM ;;
     b|B|"") Action ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && TDM ;;
   esac
 }

function Terror() {
clear && echo -e ''' --------------------------------
 {A}-> Eyes - the Horror Game
 {B}-> SCP: Containment Breach
 {C}-> Slender The Nine Pages
 {D}-> Retornar ao menu anterior
 -------------------------------- \n'''
  echo -n " => Escolha uma das opções: "
   read -n1 HORROR && echo

   case $HORROR in
     a|A|"") [ -e /home/$USER/Games/eyes-the-horror-game/eyes-2.2-linux/eyes-2.2-linux ] && echo -e '''\n  Eyes - the Horror Game \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Terror || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/eyes-the-horror-game && Terror ;;
     b|B|"") [ -e /home/$USER/Games/scp-containment-breach/drive_c/Program Files/SCP - Containment Breach/SCP - Containment Breach.exe ] && echo -e '''\n  SCP: Containment Breach \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Terror || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/scp-containment-breach && Terror ;;
     c|C|"") [ -e /home/$USER/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux ] && echo -e '''\n  O diretório do jogo Slender The Nine Pages + for Linux \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Terror || [ -e /home/$USER/Downloads/Slender_The_Nine_Pages_v1.3_for_Linux.rar ] && cd /home/$USER/Downloads && unrar x Slender_The_Nine_Pages_v1.3_for_Linux.rar && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && Terror || echo -e '''\n  O arquivo \033[46mSlender_The_Nine_Pages_v1.3_for_Linux.rar\033[0m \033[5mnão\033[0m foi 
  baixado! 
     
  Por favor, baixe o arquivo na página que abrirá em seu 
  navegador.\n''' && sleep 3 && firefox https://www.indiedb.com/games/slender-the-nine-pages/downloads/slender-the-nine-pages-v131 && read -n1 -s -p "  Pressione uma tecla para continuar..." && Terror ;;
     d|D|"") Action ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Terror ;;
   esac
 }

function Arcade() {
clear && echo -e ''' ---------------------------------------------
 {A}-> Armagetron Advanced | {B}-> AstroMenace
 {C}-> BillardGL           | {D}-> Bitfighter
 {E}-> Funguloids          | {F}-> Liquid War
 {G}-> Maelstron           | {H}-> M.A.R.S.
 {I}-> Neverputt           | {J}-> Stunt Rally
 {K}-> Teeworlds           | [L}-> YSoccer
 
 {M}-> Retornar ao menu anterior
 ---------------------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 FLIPERAMA && echo

   case $FLIPERAMA in
     a|A|"") [ -e /usr/games/armagetronad ] && echo -e '''\n  Armagetron Advanced \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install armagetronad && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     b|B|"") [ -e /usr/games/astromenace ] && echo -e '''\n  AstroMenace \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install astromenace && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     c|C|"") [ -e /usr/games/billard-gl ] && echo -e '''\n  BillardGL \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install billard-gl && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     d|D|"") [ -e /home/$USER/Games/bitfighter/bitfighter ] && echo -e '''\n  Bitfighter \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/bitfighter && Arcade ;;
     e|E|"") [ -e /usr/games/funguloids ] && echo -e '''\n  Funguloids \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install funguloids && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     f|F|"") [ -e /usr/games/liquidwar ] && echo -e '''\n  Liquid War \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install liquidwar && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     g|G|"") [ -e /usr/games/maelstrom ] && echo -e '''\n  Maelstron \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install maelstrom && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     h|H|"") [ -e /usr/games/marsshooter ] && echo -e '''\n  M.A.R.S. \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install marsshooter && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     i|I|"") [ -e /usr/games/neverputt ] && echo -e '''\n  Neverputt \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install neverputt && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     j|J|"") [ -e /home/$USER/Downloads/StuntRally-2.6-linux64/stuntrally ] && echo -e '''\n  O diretório do jogo Stunt Rally \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && [ -e /home/$USER/Downloads/StuntRally-2.6-linux.tar.gz ] && cd /home/$USER/Downloads && tar -vzxf StuntRally-2.6-linux.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || cd /home/$USER/Downloads && wget https://sourceforge.net/projects/stuntrally/files/2.6/StuntRally-2.6-linux.tar.gz && tar -vzxf StuntRally-2.6-linux.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     k|K|"") [ -e /usr/games/teeworlds ] && echo -e '''\n  Teeworlds \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && sudo apt install teeworlds && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     l|L|"") [ -e /home/$USER/Downloads/ysoccer19_linux64/ysoccer ] && echo -e '''\n  O diretório do jogo YSoccer \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || echo && [ -e /home/$USER/Downloads/ysoccer19_linux64.tar.gz ] && cd /home/$USER/Downloads && tar -vzxf ysoccer19_linux64.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade || cd /home/$USER/Downloads && wget https://sourceforge.net/projects/ysoccer/files/YSoccer19/ysoccer19_linux64.tar.gz && tar -vzxf ysoccer19_linux64.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Arcade ;;
     m|M|"") Joojs ;;
     *) echo -e "\n  \033[41mOpção inválida!\033[0m" && sleep 3 && Arcade ;;
   esac
 }

function Adventure() {
clear && echo -e ''' -------------------------------
 {A}-> The Ur-Quan Masters
 {B}-> Vegan on a Desert Island
 {C}-> Retornar ao menu anterior
 -------------------------------\n'''
 echo -n " => Escolha uma das opções: "
   read -n1 AVENTURA && echo

   case $AVENTURA in
     a|A|"") [ -e /usr/games/uqm ] && echo -e '''\n  The Ur-Quan Masters \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Adventure || echo && sudo apt install uqm && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Adventure ;;
     b|B|"") sudo apt install snapd && echo && sudo snap install solarus && cd /home/$USER && echo && wget https://gitlab.com/voadi/voadi/-/archive/master/voadi-master.zip && echo && unzip voadi-master.zip && rm -rf voadi-master.zip && echo -e '''\n  Processo de instalação concluído!

  Para jogar, siga os passos:
  1º -> Abra o \033[46mSolarus Quest Launcher\033[0m;
  2º -> Clique no botão \033[1mAdd quest\033[0m e selecione o diretório 
  /home/$USER/voadi-master;
  3º -> Selecione o arquivo \033[46mquest.dat\033[0m e clique em \033[1mOpen\033[0m;
  4º -> Por fim, clique no botão \033[1mPlay\033[0m para iniciar o jogo.\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Adventure ;;
     c|C|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Adventure ;;
   esac
}

function Educ() {
clear && echo -e ''' ----------------------------------
 {A}-> Gcompris (suíte educacional)
 {B}-> História e Geografia
 {C}-> Laboratório de Ciências
 {D}-> Programação de software
 {E}-> Retornar ao menu anterior
 ---------------------------------- \n'''
 echo -n " => Escolha uma das opções: "
   read -n1 OPTIONEDU && echo

   case $OPTIONEDU in
     a|A|"") [ -e /usr/games/gcompris-qt ] && echo -e '''\n  Gcompris \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Educ || echo && sudo apt install gcompris && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && Educ ;;
     b|B|"") HistGeo ;;
     c|C|"") Lab ;;
     d|D|"") Progame ;;
     e|E|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Educ ;;
   esac
 }

function HistGeo() {
clear && echo -e ''' --------------------------------------------------
 {A}-> Cultivation (simulação social)
 {B}-> KGeography (mapas)
 {C}-> Tux4You Genesis (história do software livre)
 {D}-> Retornar ao menu anterior
 ---------------------------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 DIMENSAO && echo

   case $DIMENSAO in
     a|A|"") [ -e /usr/games/Cultivation ] && echo -e '''\n  Cultivation \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo || echo && sudo apt install cultivation && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo ;;
     b|B|"") [ -e /usr/share/kgeography ] && echo -e '''\n  KGeography \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo || echo && sudo apt install kgeography && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo ;;
     c|C|"") [ -e /home/$USER/Downloads/Genesis-linux-mac/rpgboss ] && echo -e '''\n  O diretório do jogo Tux4You Genesis \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo || [ -e /home/$USER/Downloads/Genesis-linux-mac.tar ] && tar -xvf Genesis-linux-mac.tar && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && HistGeo || echo -e '''\n  O arquivo \033[46mGenesis-linux-mac.tar\033[0m \033[5mnão\033[0m foi baixado!
 
  Por favor, baixe o arquivo na página que abrirá em seu navegador.\n''' && sleep 5 && firefox https://mega.nz/#!HWgllKqC!iHTzoxYx6gYOcBbDQVX00XlTbAF23c3klcrxmArZ4Tg && HistGeo ;;
     d|D|"") Educ ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && HistGeo ;;
   esac
 }

function Lab() {
clear && echo -e ''' --------------------------------
 {A}-> 4D Maze Game
 {B}-> Biogenesis
 {C}-> The Powder Toy
 {D}-> Retornar ao menu anterior
 --------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 SCIENCE && echo

   case $SCIENCE in
     a|A|"") [ -e /home/$USER/Downloads/maze-2008-exe.jar ] && echo -e '''\n  O arquivo do jogo The Powder Toy \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab || echo && cd /home/$USER/Downloads && wget https://github.com/willianlycan/utilitarios/raw/master/maze-2008-exe.jar && echo -e '''\n  Download do jogo concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab ;;
     b|B|"") [ -e /home/$USER/Downloads/Biogenesis/ColorMod_1_88 ] && echo -e '''\n  O diretório do jogo Biogenesis \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab || echo && [ -e /home/$USER/Downloads/biogenesis_jar_0_9\ Mods_v11.zip ] && cd /home/$USER/Downloads && mkdir Biogenesis && mv /home/$USER/Downloads/biogenesis_jar_0_9\ Mods_v11.zip /home/$USER/Downloads/Biogenesis && cd Biogenesis && unzip biogenesis_jar_0_9\ Mods_v11.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab || cd /home/$USER/Downloads && wget https://sourceforge.net/projects/biogenesis/files/biogenesis/0.9/biogenesis_jar_0_9%20Mods_v11.zip && mkdir Biogenesis && mv /home/$USER/Downloads/biogenesis_jar_0_9\ Mods_v11.zip /home/$USER/Downloads/Biogenesis && cd Biogenesis && unzip biogenesis_jar_0_9\ Mods_v11.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab ;;
     c|C|"") [ -e /home/$USER/Downloads/The_Powder_Toy/powder64 ] && echo -e '''\n  O diretório do jogo The Powder Toy \033[5mestá em /Downloads!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab || echo && [ -e /home/$USER/Downloads/powder-lin64.zip ] && cd /home/$USER/Downloads && mkdir The_Powder_Toy && mv /home/$USER/Downloads/powder-lin64.zip /home/$USER/Downloads/The_Powder_Toy && cd The_Powder_Toy && unzip powder-lin64.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab || cd /home/$USER/Downloads && wget https://powdertoy.co.uk/Download/powder-lin64.zip && mkdir The_Powder_Toy && mv /home/$USER/Downloads/powder-lin64.zip /home/$USER/Downloads/The_Powder_Toy && cd The_Powder_Toy && unzip powder-lin64.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Lab ;;
     d|D|"") Educ ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Lab ;;
   esac
 }

function Progame() {
clear && echo -e ''' --------------------------------
 {A}-> Colobot: Golden Edition
 {B}-> Retornar ao menu anterior
 --------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 PROGAMER && echo

   case $PROGAMER in
     a|A|"") [ -e /usr/games/colobot ] && echo -e '''\n  Colobot: Golden Edition \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Progame || echo && sudo apt install colobot* && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Progame ;;
     b|B|"") Educ ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Progame ;;
   esac
 }

function Estrategia() {
clear && echo -e ''' -------------------------------
 {A}-> Baralho
 {B}-> RTS
 {C}-> Tabuleiro
 {D}-> TBS
 {E}-> Retornar ao menu anterior
 ------------------------------- \n'''
  echo -n " => Escolha uma das opções: "
   read -n1 ESTRATOSFERA && echo

   case $ESTRATOSFERA in
     a|A|"") CardGame ;;
     b|B|"") Realtime ;;
     c|C|"") BoardGame ;;
     d|D|"") Turned ;;
     e|E|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Estrategia ;;
   esac
 }

function CardGame() {
clear && echo -e ''' -------------------------------
 {A}-> Magarena
 {B}-> PySol Fan Club Edition
 {C}-> Retornar ao menu anterior
 ------------------------------- \n'''
  echo -n " => Escolha uma das opções: "
   read -n1 CARDS && echo

   case $CARDS in
     a|A|"") [ -e /home/$USER/Games/magarena/Magarena.sh ] && echo -e '''\n  Magarena \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && CardGame || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/magarena && CardGame ;;
     b|B|"") [ -e /usr/games/pysolfc ] && echo -e '''\n  PySol Fan Club Edition \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && CardGame || echo && sudo apt install pysolfc && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && CardGame ;;
     c|C|"") Estrategia ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && CardGame ;;
   esac
 }

function Realtime() {
clear && echo -e ''' -------------------------------
 {A}-> 0 A.D.
 {B}-> Annex: Conquer the World
 {C}-> Bos Wars
 {D}-> Gigalomania
 {E}-> Globulation 2 
 {F}-> MegaGlest
 {G}-> OpenDungeons
 {H}-> Open Imperium Galactica
 {I}-> OpenRA
 {J}-> Warzone 2100
 {K}-> Widelands
 {L}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 REAL && echo

   case $REAL in
     a|A|"") [ -e /usr/games/0ad ] && echo -e '''\n  0 A.D \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install 0ad && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     b|B|"") [ -e /home/$USER/Games/annex-conquer-the-world/annex ] && echo -e '''\n  Annex: Conquer the World \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/annex-conquer-the-world && Realtime ;;
     c|C|"") [ -e /usr/games/boswars ] && echo -e '''\n  Bos Wars \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install boswars && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     d|D|"") [ -e /home/$USER/Downloads/gigalomaniasrc.zip ] && sudo apt-get install make && sudo apt-get install g++ && sudo apt-get install libsdl2-dev && sudo apt-get install libsdl2-image-dev && sudo apt-get install libsdl2-mixer-dev && [ -e /home/$USER/Downloads/gigalomaniasrc.zip ] && cd /home/$USER/Downloads && unzip gigalomaniasrc.zip && cd /home/$USER/Downloads/gigalomaniasrc && sudo make install && sleep 3 && Realtime || echo -e '''\n  O arquivo \033[46mgigalomaniasrc.zip\033[0m \033[5mnão\033[0m foi baixado!
 
  Por favor, baixe o arquivo na página que abrirá em seu navegador.\n''' && sleep 5 && firefox http://launchpad.net/gigalomania/trunk/1.0.1/+download/gigalomaniasrc.zip && Realtime ;;
     e|E|"") [ -e /usr/games/glob2 ] && echo -e "\n  Globulation 2 \033[5mestá instalado!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install glob2 && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     f|F|"") [ -e /usr/games/megaglest ] && echo -e '''\n  MegaGlest \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install megaglest && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     g|G|"") [ -e /home/$USER/Games/opendungeons/opendungeons.x86_64 ] && echo -e '''\n  OpenDungeons \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/opendungeons && Realtime ;;
     h|H|"") [ -e /home/$USER/Downloads/open-ig-launcher.jar ] && echo -e '''\n  O arquivo \033[46mopen-ig-launcher.jar\033[0m está no diretório \033[46m/Downloads\033[0m! \n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo -e '''\n  O arquivo \033[46mopen-ig-launcher.jar\033[0m \033[5mnão\033[0m foi baixado! 
     
  Por favor, baixe o arquivo na página que abrirá em seu navegador.\n''' && sleep 5 && firefox https://github.com/akarnokd/open-ig/raw/master/open-ig-launcher.jar && Realtime ;;
     i|I|"") [ -e /home/$USER/Games/openra/OpenRA-Red-Alert-x86_64.AppImage ] && echo -e '''\n  OpenRA \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/openra && Realtime ;;
     j|J|"") [ -e /usr/games/warzone2100 ] && echo -e '''\n  Warzone 2100 \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install warzone2100 && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     k|K|"") [ -e /usr/games/widelands ] && echo -e '''\n  Widelands \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime || echo && sudo apt install widelands && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Realtime ;;
     l|L|"") Estrategia ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Realtime ;;
   esac
 }
 
function BoardGame() {
clear && echo -e ''' ----------------------------------
 {A}-> Domination (Risk Board Game)
 {B}-> GNU Go
 {C}-> TripleA
 {D}-> Xboard (Xadrez)
 {E}-> Retornar ao menu anterior
 ----------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 BOARD && echo

   case $BOARD in
     a|A|"") [ -e /home/$USER/Domination/run.sh ] && echo -e "\n  O diretório do jogo Domination (Risk Board Game) \033[5mestá em /home/$USER!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || echo && [ -e /home/$USER/Downloads/Domination_install_1.2.1.jar ] && cd /home/$USER/Downloads && java -jar Domination_install_1.2.1.jar && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || echo && cd /home/$USER/Downloads && wget https://sourceforge.net/projects/domination/files/Domination/1.2.1/Domination_install_1.2.1.jar && java -jar Domination_install_1.2.1.jar && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame ;;
     b|B|"") [ -e /usr/games/gnugo ] && echo -e '''\n  GNU Go \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || echo && sudo apt install gnugo && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame ;;
     c|C|"") [ -e /home/$USER/TripleA/TripleA ] && echo -e "\n  O diretório do jogo TripleA \033[5mestá em /home/$USER!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || echo && [ -e /home/$USER/Downloads/TripleA_1.9.0.0.13066_unix.sh ] && cd /home/$USER/Downloads && chmod +x TripleA_1.9.0.0.13066_unix.sh && sudo apt install openjdk-8-jre && ./TripleA_1.9.0.0.13066_unix.sh && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || cd /home/$USER/Downloads && wget https://github.com/triplea-game/triplea/releases/download/1.9.0.0.13066/TripleA_1.9.0.0.13066_unix.sh && chmod +x TripleA_1.9.0.0.13066_unix.sh && sudo apt install openjdk-8-jre && ./TripleA_1.9.0.0.13066_unix.sh && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame ;;
     d|D|"") [ -e /usr/games/xboard ] && echo -e '''\n  Xboard \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame || echo && sudo apt install xboard && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && BoardGame ;;
     e|E|"") Estrategia ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && BoardGame ;;
   esac
 }
 
function Turned() {
clear && echo -e ''' -------------------------------
 {A}-> Freeciv
 {B}-> FreeOrion 
 {C}-> The Battle for Wesnoth
 {D}-> UFO: Alien Invasion
 {E}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 TURNO && echo

   case $TURNO in
     a|A|"") [ -e /usr/games/freeciv ] && echo -e '''\n  Freeciv \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned || echo && sudo apt install freeciv && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned ;;
     b|B|"") [ -e /usr/games/freeorion ] && echo -e '''\n  FreeOrion \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned || echo && sudo apt install freeorion && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned ;;
     c|C|"") [ -e /usr/games/wesnoth ] && echo -e '''\n  The Battle for Wesnoth \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned || echo && sudo apt install wesnoth && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned ;;
     d|D|"") [ -e /usr/games/ufoai ] && echo -e '''\n  UFO: Alien Invasion \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned || echo && sudo apt install ufoai && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Turned ;;
     e|E|"") Estrategia ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Turned ;;
   esac
 }
 
function MultiOn() {
clear && echo -e ''' --------------------------------
 {A}-> FPS multiplayer
 {B}-> FPS + RTS multiplayer 
 {C}-> MMORPG
 {D}-> Retornar ao menu principal
 --------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 OPTIONMO && echo

   case $OPTIONMO in
     a|A|"") Fpson ;;
     b|B|"") Fpsgs ;;
     c|C|"") Mmorpg ;;
     d|D|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && MultiOn ;;
   esac
 }

function Fpson() {
clear && echo -e ''' -----------------------------------
 {A}-> Alien Arena
 {B}-> AssaultCube Reloaded
 {C}-> Cube 2: Sauerbraten
 {D}-> Nexuiz
 {E}-> OpenArena
 {F}-> Red Eclipse
 {G}-> Uebergame
 {H}-> Urban Terror
 {I}-> Warsow
 {J}-> Wolfenstein: Enemy Territory
 {K}-> Xonotic
 {L}-> Retornar ao menu anterior
 -----------------------------------\n'''
  echo -n " => Esolha uma das opções: "
   read -n1 FPSY && echo
   
   case $FPSY in
     a|A|"") [ -e /usr/games/alien-arena ] && echo -e '''\n  UFO: Alien Arena \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && sudo apt install alien-arena && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     b|B|"") [ -e /home/$USER/Games/assaultcube-reloaded/client.sh ] && echo -e '''\n  AssaultCube Reloaded \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/assaultcube-reloaded && Fpson ;;
     c|C|"") [ -e /home/$USER/Games/sauerbraten-cube-2/sauerbraten_unix ] && echo -e '''\n  Cube 2: Sauerbraten \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/sauerbraten-cube-2 && Fpson ;;
     d|D|"") [ -e /usr/games/nexuiz ] && echo -e '''\n  UFO: Nexuiz \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && sudo apt install nexuiz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     e|E|"") [ -e /home/$USER/Games/openarena/openarena.x86_64 ] && echo -e '''\n  OpenArena \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/openarena && Fpson ;;
     f|F|"") [ -e /usr/games/redeclipse ] && echo -e '''\n  UFO: Red Eclipse \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && sudo apt install redeclipse && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     g|G|"") [ -e /home/$USER/Downloads/Uebergame-1.1.2.0.zip/Uebergame-1.1.2.0/Uebergame ] && echo -e "\n  O diretório do jogo Uebergame \033[5mestá em /Downloads!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && [ -e /home/$USER/Downloads/Uebergame-1.1.2.0.zip ] && cd /home/$USER/Downloads && unzip Uebergame-1.1.2.0.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && cd /home/$USER/Downloads && wget https://duion.com/files/games Uebergame-1.1.2.0.zip && unzip Uebergame-1.1.2.0.zip && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     h|H|"") [ -e /home/$USER/Games/urban-terror/prefix/drive_c/Program Files/Urban Terror/Quake3-UrT.exe ] && echo -e '''\n  Urban Terror \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/urban-terror && Fpson ;;
     i|I|"") [ -e /home/$USER/Downloads/warsow-2.1.2/warsow ] && echo -e "\n  O diretório do jogo Warsow \033[5mestá em /home/$USER!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && [ -e /home/$USER/Downloads/warsow-2.1.2.tar.gz ] && cd /home/$USER/Downloads && tar -vzxf warsow-2.1.2.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && cd /home/$USER/Downloads && wget http://warsow.net/warsow-2.1.2.tar.gz && tar -vzxf warsow-2.1.2.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     j|J|"") [ -e /usr/local/games/enemy-territory/et ] && echo -e "\n  O diretório do jogo Wolfenstein: Enemy Territory \033[5mestá em /usr/local/games!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && [ -e /home/$USER/Downloads/et260b.x86_full.zip ] && cd /home/$USER/Downloads && unzip et260b.x86_full.zip && sudo apt install sntp && echo && sudo ./et260b.x86_keygen_V03.run && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo && cd /home/$USER/Downloads && wget https://cdn.splashdamage.com/downloads/games/wet/et260b.x86_full.zip && unzip et260b.x86_full.zip && sudo apt install sntp && echo && sudo ./et260b.x86_keygen_V03.run && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson ;;
     k|K|"") [ -e /home/$USER/Games/xonotic/xonotic-linux-glx.sh ] && echo -e '''\n  Xonotic \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpson || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/xonotic && Fpson ;;
     l|L|"") MultiOn ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Fpson ;;
   esac
 }

function Fpsgs() {
clear && echo -e ''' -------------------------------
 {A}-> Savage XR
 {B}-> Unvanquished
 {C}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Esolha uma das opções: "
   read -n1 RTSS && echo

   case $RTSS in
     a|A|"") [ -e /home/$USER/savage-xr/savage.sh ] && echo -e "\n  O jogo Savage XR \033[5mestá instalado!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpsgs || echo && [ -e /home/$USER/Downloads/xr_setup-1.0-cl_lin_prod.bin ] && cd ~/Downloads && chmod +x xr_setup-1.0-cl_lin_prod.bin && ./xr_setup-1.0-cl_lin_prod.bin && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpsgs || echo -e '''\n  O arquivo \033[46mxr_setup-1.0-cl_lin_prod.bin\033[0m \033[5mnão\033[0m foi baixado!

  Por favor, baixe o arquivo na página que abrirá 
  em seu navegador.\n''' && sleep 5 && firefox https://savagexr.com/download.html && Fpsgs ;;
     b|B|"") [ -e /home/$USER/Games/unvanquished/daemon ] && echo -e '''\n  Unvanquished \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Fpsgs || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/unvanquished && Fpsgs ;;
     c|C|"") MultiOn ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Fpsgs ;;
   esac
 }
 
function Mmorpg() {
clear && echo -e ''' -------------------------------
 {A}-> Albion Online
 {B}-> Crossfire
 {C}-> Daimonin
 {D}-> Deliantra
 {E}-> PlaneShift 
 {F}-> RuneLite
 {G}-> Stendhal
 {H}-> The Mana World
 {I}-> Retornar ao menu anterior
 -------------------------------\n'''
  echo -n " => Esolha uma das opções: "
   read -n1 MMORPGX && echo
   
   case $MMORPGX in
     a|A|"") [ -e /home/$USER/Games/albion-online/data/Albion-Online ] && echo -e '''\n  Albion Online \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/freedroidrpg && Mmorpg ;;
     b|B|"") [ -e /usr/games/crossfire-client-gtk2 ] && echo -e '''\n  Crossfire \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo && sudo apt install crossfire-client && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg ;;
     c|C|"") [ -e /home/$USER/Downloads/daimonin_client/daimonin ] && echo -e "\n  O jogo Daimonin \033[5mestá instalado!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo && [ -e /home/$USER/Downloads/Daimonin-installer-20150112.run ] && cd ~/Downloads && chmod +x Daimonin-installer-20150112.run && ./Daimonin-installer-20150112.run && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo -e '''\n  O arquivo \033[46mgigalomaniasrc.zip\033[0m \033[5mnão\033[0m foi baixado!
 
  Por favor, baixe o arquivo na página que abrirá 
  em seu navegador.\n''' && sleep 5 && firefox https://www.daimonin.org/downloads/sa/downfile/id/5/ && Mmorpg ;;
     d|D|"") [ -e /home/$USER/Downloads/deliantra-gnu-linux-amd64 ] && echo -e "\n  O jogo Deliantra \033[5mestá em /Downloads!\033[0m\n" && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo && [ -e /home/$USER/Downloads/deliantra-gnu-linux-amd64.tar.gz ] && cd /home/$USER/Downloads && tar -vzxf deliantra-gnu-linux-amd64.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo && cd /home/$USER/Downloads && wget http://dist.schmorp.de/deliantra/ota/deliantra-gnu-linux-amd64.tar.gz && tar -vzxf deliantra-gnu-linux-amd64.tar.gz && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg ;;
     e|E|"") firefox http://www.planeshift.it && Mmorpg ;;
     f|F|"") [ -e /home/$USER/Downloads/RuneLite.AppImage ] && cd ~/Downloads && chmod +x RuneLite.AppImage && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || cd ~/Downloads && echo && wget https://github.com/runelite/launcher/releases/download/2.1.0/RuneLite.AppImage && chmod +x RuneLite.AppImage && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg ;;
     g|G|"") [ -e /home/$USER/Games/stendhal/start.sh ] && echo -e '''\n  Stendhal \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/stendhal && Mmorpg ;;
     h|H|"") [ -e /usr/games/manaplus ] && echo -e '''\n  ManaPlus (The Mana World) \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg || echo && sudo apt install manaplus && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Mmorpg ;;
     i|I|"") MultiOn ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Mmorpg ;;
   esac
 }

function RPG() {
clear && echo -e ''' -------------------------------
 {A}-> Flare
 {B}-> FreeDink
 {C}-> Freedroid RPG
 {D}-> Roguelike (masmorra)
 {E}-> Retornar ao menu anterior
 ------------------------------- \n'''
  echo -n " => Esolha uma das opções: "
   read -n1 RPGX && echo

   case $RPGX in
     a|A|"") [ -e /home/$USER/Games/flare/flare.sh ] && echo -e '''\n  Flare \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && RPG || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/flare && RPG ;;
     b|B|"") [ -e /usr/games/freedink ] && echo -e '''\n  FreeDink \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && RPG || echo && sudo apt install freedink && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && RPG ;;
     c|C|"") [ -e /home/$USER/Games/freedroidrpg/bin/freedroidRPG ] && echo -e '''\n  Freedroid RPG \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && RPG || echo -e '''\n  Selecione um instalador do jogo na plataforma \033[33mLutris\033[0m \n''' && sleep 3 && lutris install/freedroidrpg && RPG ;;
     d|D|"") Rogueliked ;;
     e|E|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && RPG ;;
   esac
 }

function Rogueliked() {
clear && echo -e ''' --------------------------------
 {A}-> Cataclysm: Dark Days Ahead
 {B}-> Dungeon Crawl Stone Soup
 {C}-> Powder
 {D}-> RogueBox Adventures
 {E}-> Retornar ao menu anterior
 --------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 ROGUE && echo

   case $ROGUE in
     a|A|"") [ -e /usr/games/cataclysm ] && echo -e '''\n  Cataclysm: Dark Days Ahead \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked || echo && sudo apt install cataclysm-dda-* && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked ;;
     b|B|"") [ -e /usr/games/crawl-tiles ] && echo -e '''\n  Dungeon Crawl Stone Soup \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked || echo && sudo apt install crawl* && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked ;;
     c|C|"") [ -e /usr/games/powder ] && echo -e '''\n  Powder \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked || echo && sudo apt install powder && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked ;;
     d|D|"") echo && sudo apt install python3 python3-pygame && [ -e /home/$USER/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit.zip ] && echo && unzip RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit.zip && echo && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked || echo -e '''\n  O arquivo \033[46mRogueBoxAdventures_v3_0_1_GNU+Linux_64Bit.zip\033[0m \033[5mnão\033[0m 
  foi baixado! 
     
  Por favor, baixe o arquivo na página que abrirá em seu 
  navegador.\n''' && sleep 3 && firefox https://themightyglider.itch.io/roguebox-adventures && read -n1 -s -p "  Pressione uma tecla para continuar..." && Rogueliked ;;
     e|E|"") RPG ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Rogueliked ;;
   esac
 }
 
function Simuladores() {
clear && echo -e ''' --------------------------------------------
 {A}-> Flightgear (simulador de vôo)
 {B}-> Opencity (simulador de cidade)
 {C}-> OpenSSN (simulador de submarino)
 {D}-> OpenTTD (simulador de transportes)
 {E}-> Simulatrans (simulador de transportes) 
 {F}-> Speed Dreams (simulador de motorsport)
 {G}-> Retornar ao menu anterior
 --------------------------------------------\n'''
  echo -n " => Escolha uma das opções: "
   read -n1 SIM && echo

   case $SIM in
     a|A|"") [ -e /usr/games/fgfs ] && echo -e '''\n  Flightgear \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo && sudo apt install flightgear && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     b|B|"") [ -e /usr/games/opencity ] && echo -e '''\n  Opencity \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo && sudo apt install opencity && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     c|C|"") [ -e /usr/games/openssn ] && echo -e '''\n  OpenSSN \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo && sudo apt install openssn && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     d|D|"") [ -e /usr/games/openttd ] && echo -e '''\n  OpenTTD \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo && sudo apt install openttd && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     e|E|"") [ -e /usr/games/simutrans ] && echo -e '''\n  Simulatrans \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo && sudo apt install simutrans* && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     f|F|"") [ -e /home/$USER/Downloads/speed-dreams-src-base-2.2.2-r6553.tar.xz ] && sudo apt install cmake libopenscenegraph-3.4-dev freeglut3-dev libvorbis-dev libsdl2-dev libopenal-dev libenet-dev libexpat1-dev libjpeg-dev libplib-dev libpng-dev libcurl4-openssl-dev && cd /home/$USER/Downloads && tar xvfa speed-dreams-src-base-2.2.2-r6553.tar.xz && mkdir build && cd build && cmake -D OPTION_OFFICIAL_ONLY:BOOL=ON .. && make && sudo make install && echo "export PATH=$PATH:/usr/local/games" >> ~/.bashrc && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores || echo -e '''\n  O arquivo \033[46mspeed-dreams-src-base-2.2.2-r6553.tar.xz\033[0m \033[5mnão\033[0m foi baixado! 
     
  Por favor, baixe o arquivo da página que abrirá 
  em seu navegador.\n''' && sleep 5 && firefox https://sourceforge.net/projects/speed-dreams/files/latest/download && read -n1 -s -p "  Pressione uma tecla para continuar..." && Simuladores ;;
     g|G|"") Joojs ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Simuladores ;;
   esac
 }

function Gameplay() {
clear && echo -e ''' ---------------------------------
 {A}-> Emuladores
 {B}-> Joystick
 {C}-> Lutris
 {D}-> PlayOnLinux
 {E}-> Q4Wine
 {F}-> Wine
 {G}-> Winetricks
 {H}-> Retornar ao menu anterior 
 --------------------------------- \n'''
  echo -n " => Escolha uma das opções: "
   read -n1 Gameplays && echo

   case $Gameplays in
     a|A|"") Emuladores ;;
     b|B|"") echo && sudo apt install joystick && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     c|C|"") [ -e /bin/lutris ] && echo -e '''\n  A Plataforma de jogos \033[33mLutris\033[0m \033[5mjá está instalada! \033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && sudo add-apt-repository ppa:lutris-team/lutris && apt-get update && apt-get install lutris && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     d|D|"") [ -e /bin/playonlinux ] && echo -e '''\n  PlayOnLinux \033[5mjá está instalado! \033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && sudo apt install playonlinux && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     e|E|"") [ -e /bin/q4wine ] && echo -e '''\n  Q4Wine \033[5mjá está instalado! \033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && sudo apt install q4wine && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     f|F|"") [ -e /bin/wine ] && echo -e '''\n  Wine \033[5mjá está instalado! \033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && sudo apt install wine && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     g|G|"") [ -e /bin/winetricks ] && echo -e '''\n  Winetricks \033[5mjá está instalado! \033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && sudo apt install winetricks && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Gameplay ;;
     h|H|"") Menuini ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Gameplay ;;
   esac
 }

function Emuladores() {
clear && echo -e ''' -----------------------------------
 {A}-> BlastEm (Sega Genesis)
 {B}-> Dolphin (GameCube & Wii)
 {C}-> DOSBox (MS-DOS)
 {D}-> GNOME Video Arcade (Arcade)
 {E}-> Mednafen (Multi)
 {F}-> Mupen64Plus-Qt (Nintendo 64)
 {G}-> Nestopia (NES) 
 {H}-> PCSX2 (Playstation 2)
 {I}-> PCSXR (Playstation One)
 {J}-> RetroArch (Multi)
 {K}-> Stella (Atari 2600)
 {L}-> Ybause (Sega Saturn)
 ----------------------------------- \n'''
  echo -n " => Escolha uma das opções: "
   read -n1 EMULA && echo
   
   case $EMULA in
     a|A|"") [ -e /usr/games/blastem ] && echo -e '''\n  BlastEm \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install blastem && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     b|B|"") [ -e /usr/games/dolphin-emu ] && echo -e '''\n  Dolphin \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install dolphin-emu && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     c|C|"") [ -e /usr/games/dosbox ] && echo -e '''\n  DOSBox \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install dosbox && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     d|D|"") [ -e /usr/games/gnome-video-arcade ] && echo -e '''\n  GNOME Video Arcade \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install gnome-video-arcade && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     e|E|"") [ -e /usr/games/mednafen ] && echo -e '''\n  Mednafen \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install mednafen && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     f|F|"") [ -e /usr/games/mupen64plus-qt ] && echo -e '''\n  Mupen64Plus-Qt \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install mupen64plus-qt && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     g|G|"") [ -e /usr/games/nestopia ] && echo -e '''\n  Nestopia \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install nestopia && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     h|H|"") [ -e /usr/games/pcsx2 ] && echo -e '''\n  PCSX2 \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install pcsx2 && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     i|I|"") [ -e /usr/games/pcsxr ] && echo -e '''\n  PCSXR \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install pcsxr && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     j|J|"") [ -e /usr/games/retroarch ] && echo -e '''\n  RetroArch \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install retroarch && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     k|K|"") [ -e /usr/games/stella ] && echo -e '''\n  Stella \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install stella && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     l|L|"") [ -e /usr/games/ybause ] && echo -e '''\n  Ybause \033[5mestá instalado!\033[0m\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores || echo && sudo apt install ybause && echo -e '''\n  Processo de instalação concluído!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && Emuladores ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Emuladores ;;
   esac
 }

function Firefox() {
clear && echo -e ''' --------------------------------
        \033[31mBrowser\033[0m \033[34mGames\033[0m
 --------------------------------\n
 {A}-> Ancient Beast
 {B}-> Survivor
 {C}-> Telehack
 {D}-> Tetris.exe
 {E}-> Retornar ao menu anterior
 -------------------------------- \n'''
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTIONK && echo

   case $OPTIONK in
     a|A|"") firefox https://beta.ancientbeast.com && Firefox ;;
     b|B|"") firefox http://www.schillmania.com/survivor && Firefox ;;
     c|C|"") firefox http://telehack.com/ && Firefox ;;
     d|D|"") firefox https://archive.org/details/TETRIS.EXE && Firefox ;;
     e|E|"") Menuini ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && Firefox ;;
   esac
 }

function TermExec() {
clear && echo -e ''' ----------------------------------------------
 {A}-> 4D Maze Game | {B}-> Biogenesis 
 {C}-> Cows Revenge | {D}-> Deliantra
 {E}-> RogueBox Adventures
 {F}-> Open Imperium Galactica       
 {G}-> reTux | {H}-> RuneLite 
 {I}-> Slender The Nine Pages
 {J}-> Speed Dreams 2 | {K}-> Stunt Rally
 {L}-> The Powder Toy | {M}-> Tux4You Genesis
 {N}-> Uebergame | {O}-> Warsow | {P}-> YSoccer
 
 {Q}-> Retornar ao menu anterior
 ----------------------------------------------\n'''
  echo -n "  => Esolha uma das opções: "
   read -n1 TERMINATOR && echo

   case $TERMINATOR in
     a|A|"") [ -e /home/$USER/Downloads/maze-2008-exe.jar ] && cd ~/Downloads && java -jar maze-2008-exe.jar && TermExec || echo -e '''\n  O arquivo \033[46mmaze-2008-exe.jar\033[0m \033[5mnão\033[0m foi baixado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     b|B|"") [ -e /home/$USER/Downloads/Biogenesis/ColorMod_1_88/biogenesis.jar ] && cd ~/Downloads/Biogenesis/ColorMod_1_88 && java -jar biogenesis.jar && TermExec || echo -e '''\n  O jogo \033[46mBiogenesis\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     c|C|"") [ -e /home/$USER/Downloads/CowsRevenge.x86_64 ] && cd ~/Downloads && ./CowsRevenge.x86_64 && TermExec || echo -e '''\n  O arquivo \033[46mCowsRevenge.x86_64\033[0m \033[5mnão\033[0m foi baixado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     d|D|"") [ -e /home/$USER/Downloads/deliantra-gnu-linux-amd64 ] && cd ~/Downloads && ./deliantra-gnu-linux-amd64 && TermExec || echo -e '''\n  O jogo \033[46mDeliantra\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     e|E|"") [ -e /home/$USER/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit/run ] && cd ~/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit && ./run && TermExec || echo -e '''\n  O jogo \033[46mRogueBox Adventures\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     f|F|"") [ -e /home/$USER/Downloads/open-ig-launcher.jar ] && cd ~/Downloads && java -jar open-ig-launcher.jar && TermExec || echo -e '''\n  O arquivo \033[46mopen-ig-launcher.jar\033[0m \033[5mnão\033[0m foi baixado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     g|G|"") [ -e /home/$USER/Downloads/retux-1.3.6-linux-gnu-x86_64/retux ] && cd ~/Downloads/retux-1.3.6-linux-gnu-x86_64 && ./retux && TermExec || echo -e '''\n  O jogo \033[46mretux\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     h|H|"") [ -e /home/$USER/Downloads/RuneLite.AppImage ] && cd ~/Downloads && ./RuneLite.AppImage && TermExec || echo -e '''\n  O jogo \033[46mRuneLite\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     i|I|"") [ -e /home/$USER/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux/Slender\ The\ Nine\ Pages ] && cd ~/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux && ./Slender\ The\ Nine\ Pages && TermExec || echo -e '''\n  O jogo \033[46mSlender The Nine Pages\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     j|J|"") speed-dreams-2 && TermExec ;;
     l|L|"") [ -e /home/$USER/Downloads/The_Powder_Toy/powder64 ] && cd ~/Downloads/The_Powder_Toy && ./powder64 && TermExec || echo -e '''\n  O jogo \033[46mThe Powder Toy\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     m|M|"") [ -e /home/$USER/Downloads/Genesis-linux-mac/rpgboss ] && cd ~/Downloads/Genesis-linux-mac && ./rpgboss && TermExec || echo -e '''\n  O jogo \033[46mTux4You Genesis\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     n|N|"") [ -e /home/$USER/Downloads/Uebergame-1.1.2.0/Uebergame ] && cd ~/Downloads/Uebergame-1.1.2.0 && ./Uebergame && TermExec || echo -e '''\n  O jogo \033[46mUebergame\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     o|O|"") [ -e /home/$USER/Downloads/warsow-2.1.2/warsow ] && cd ~/Downloads/warsow-2.1.2 && ./warsow && TermExec || echo -e '''\n  O jogo \033[46mWarsow\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     p|P|"") [ -e /home/$USER/Downloads/ysoccer19_linux64/ysoccer ] && cd ~/Downloads/ysoccer19_linux64 && echo && ./ysoccer && TermExec || echo -e '''\n  O jogo \033[46mYSoccer\033[0m \033[5mnão\033[0m foi instalado!\n''' && read -n1 -s -p "  Pressione uma tecla para continuar..." && TermExec ;;
     q|Q|"") Menuini ;;
     *) echo -e '''\n  \033[41mOpção inválida!\033[0m''' && sleep 3 && TermExec ;;
   esac
}

Menuini
