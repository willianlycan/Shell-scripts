#!/usr/bin/env bash
# Variáveis
INSTALLED="\\n  O jogo está instalado! \\n" 
CONTINUE="  Pressione uma tecla para continuar..."
APT_INSTALL="sudo apt install"
SELECT="\\n  Selecione um instalador na plataforma \\033[33mLutris\\033[0m \\n"
COMPLETED="\\n  Processo de instalação concluído! \\n"
WHEREISIT="\\n  O diretório do jogo está em"
NOT_FOUND="  O arquivo do jogo \\033[5mnão\\033[0m está em /Downloads! \\n \\n Por favor, baixe o arquivo na página que irá carregar em seu navegador. \\n"

function Menuini() {
 clear && echo -e "\\n     \\033[1mJogos para Linux Ubuntu e derivados\\033[0m \\n
 {A} Baixar e instalar jogos \\n {B} Baixar e instalar recursos para gameplay
 {C} Jogar no navegador \\n {D} Play games \\n {X} Sair \\n"
 echo -n "  => Esolha uma das opções: "
  read -n1 -r OPTION && echo -e "\\n"

   case $OPTION in
     a|A) Joojs ;;
     b|B) Gameplay ;;
     c|C) Firefox ;;
     d|D) TermExec ;;
     x|X) clear && exit ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Menuini ;;
   esac
 }

function Joojs() {
 clear && echo -e "\\n {A} Ação \\n {B} Arcade \\n {C} Aventura
 {D} Educativos \\n {E} Esportes \\n {F} Estratégia
 {G} FPS+RTS \\n {H} MMORPG \\n {I} RPG \\n {J} Simuladores \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r OPTION2 && echo -e "\\n"
  
   case $OPTION2 in
     a|A) Action ;;
     b|B) Arcade ;;
     c|C) Adventure ;;
     d|D) Educ ;;
     e|E) Esportes ;;
     f|F) Estrategia ;;
     g|G) Fpsgs ;;
     h|H) Mmorpg ;;
     i|I) Rpg ;;
     j|J) Simuladores ;;
     z|Z) Menuini ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Joojs ;;
   esac
 }
  
function Action() {
 clear && echo -e "\\n {A} Casual \\n {B} Combate veicular \\n {C} FPS
 {D} Luta \\n {E} Plataforma \\n {F} Sobrevivência
 {G} Stealth (ação furtiva) \\n {H} Survival Horror (terror) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n "  => Esolha uma das opções: "
  read -n1 -r OPTION4 && echo -e "\\n"

   case $OPTION4 in
     a|A) Casual ;;
     b|B) Combate ;;
     c|C) Fpson ;;
     d|D) Lutinha ;;
     e|E) Plataforma ;;
     f|F) Survival ;;
     g|G) Tdm ;;
     h|H) Terror ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Action ;;
   esac
 }

function Casual() {
 clear && echo -e "\\n {A} Armagetron Advanced \\n {B} Funguloids \\n {C} Liquid War \\n {D} Vertigo \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r CASUAL && echo -e "\\n"

   case $CASUAL in
     a|A) [ -e /usr/games/armagetronad ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Casual || echo && $APT_INSTALL armagetronad && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Casual ;;
     b|B) [ -e /usr/games/funguloids ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Casual || echo && $APT_INSTALL funguloids && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Casual ;;
     c|C) [ -e /usr/games/liquidwar ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Casual || echo && $APT_INSTALL liquidwar && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Casual ;;
     d|D) [ -e ~/Games/vertigo/launch.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Casual || echo -e "$SELECT" && sleep 5 && lutris install/vertigo && Casual ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Casual ;;
   esac
}
 
function Combate() {
 clear && echo -e "\\n {A} BZFlag \\n {B} SuperTuxKart \\n {C} Zero Ballistics \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r VEICULAR && echo -e "\\n"
   
   case $VEICULAR in
     a|A) [ -e /snap/bzflag/1/bin/bzflag ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Combate || [ -e /snap/core ] && echo && sudo snap install bzflag && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Combate || echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Combate ;;
     b|B) [ -e ~/Games/supertuxkart/run_game.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Combate || echo -e "$SELECT" && sleep 3 && lutris install/supertuxkart && Combate ;;
     c|C) [ -e ~/Games/zero-ballistics/start_client.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Combate || echo -e "$SELECT" && sleep 5 && lutris install/zero-ballistics && Combate ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Combate ;;
   esac
}
 
function Fpson() {
 clear && echo -e "\\n {A} Alien Arena \\n {B} AssaultCube Reloaded \\n {C} Cube 2: Sauerbraten
 {D} Freedoom \\n {E} Nexuiz \\n {F} OpenArena \\n {G} Red Eclipse \\n {H} Uebergame
 {I} Urban Terror \\n {J} Warsow \\n {K} Wolfenstein: Enemy Territory \\n {L} Xonotic \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r FPSY && echo -e "\\n"
   
   case $FPSY in
     a|A) [ -e /usr/games/alien-arena ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && $APT_INSTALL alien-arena && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     b|B) [ -e ~/Games/assaultcube-reloaded/client.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo -e "$SELECT" && sleep 3 && lutris install/assaultcube-reloaded && Fpson ;;
     c|C) [ -e ~/Games/sauerbraten-cube-2/sauerbraten_unix ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo -e "$SELECT" && sleep 3 && lutris install/sauerbraten-cube-2 && Fpson ;;
     d|D) [ -e /usr/games/freedoom1 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && $APT_INSTALL freedoom && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     e|E) [ -e /usr/games/nexuiz ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && $APT_INSTALL nexuiz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     f|F) [ -e ~/Games/openarena/openarena.x86_64 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo -e "$SELECT" && sleep 3 && lutris install/openarena && Fpson ;;
     g|G) [ -e /usr/games/redeclipse ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && $APT_INSTALL redeclipse && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     h|H) [ -e ~/Downloads/Uebergame-1.1.2.0.zip/Uebergame-1.1.2.0/Uebergame ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && [ -e ~/Downloads/Uebergame-1.1.2.0.zip ] && cd ~/Downloads && unzip Uebergame-1.1.2.0.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && cd ~/Downloads && wget https://duion.com/files/games Uebergame-1.1.2.0.zip && unzip Uebergame-1.1.2.0.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     i|I) [ -e ~/Games/urban-terror/prefix/drive_c/Program\ Files/Urban\ Terror/Quake3-UrT.exe ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo -e "$SELECT" && sleep 3 && lutris install/urban-terror && Fpson ;;
     j|J) [ -e ~/Downloads/warsow-2.1.2/warsow ] && echo -e echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && [ -e ~/Downloads/warsow-2.1.2.tar.gz ] && cd ~/Downloads && tar -vzxf warsow-2.1.2.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && cd ~/Downloads && wget http://warsow.net/warsow-2.1.2.tar.gz && tar -vzxf warsow-2.1.2.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     k|K) [ -e /usr/local/games/enemy-territory/et ] && echo -e "$WHEREISIT /usr/local/games! \\n" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && [ -e ~/Downloads/et260b.x86_full.zip ] && cd ~/Downloads && unzip et260b.x86_full.zip && $APT_INSTALL sntp && echo && sudo ./et260b.x86_keygen_V03.run && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo && cd ~/Downloads && wget https://cdn.splashdamage.com/downloads/games/wet/et260b.x86_full.zip && unzip et260b.x86_full.zip && $APT_INSTALL sntp && echo && sudo ./et260b.x86_keygen_V03.run && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpson ;;
     l|L) [ -e ~/Games/xonotic/xonotic-linux-glx.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpson || echo -e "$SELECT" && sleep 3 && lutris install/xonotic && Fpson ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Fpson ;;
   esac
 }
 
function Lutinha() {
 clear && echo -e "\\n {A} Bootfighter Windom XP sp-2 \\n {B} Terrordrome: Rise of the Boogeyman \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r OPTIONX && echo -e "\\n"

   case $OPTIONX in
     a|A) [ -e ~/Downloads/Bootfighter_Windom_XP_sp-2.NET_v1.031_\[mirror_moon\].exe ] && wine ~/Downloads/Bootfighter_Windom_XP_sp-2.NET_v1.031_\[mirror_moon\].exe && Lutinha || echo -e "$NOT_FOUND" && sleep 5 && firefox https://baixar.freedownloadmanager.org/Windows-PC/Bootfighter-Windom-XP-sp-2/GRATUITO-1.031.html && Lutinha ;;
     b|B) [ -e ~/Downloads/TRDM-Linux-Mac-2_10_3.exe ] && wine ~/Downloads/TRDM-Linux-Mac-2_10_3.exe && Lutinha ||  echo -e "$NOT_FOUND" && sleep 5 && firefox http://terrordrome-thegame.com/download && read -n1 -r -s -p "$CONTINUE" && Lutinha ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Lutinha ;;
   esac
 }

function Plataforma() {
 clear && echo -e "\\n {A} CaveExpress \\n {B} Cows Revenge \\n {C} Frogatto
 {D} Mr. Rescue \\n {E} reTux \\n {F} SuperTux \\n {G} The Legend of Edgar \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r PLATAFORMA && echo -e "\\n"

   case $PLATAFORMA in
     a|A) [ -e ~/Games/cave-express/caveexpress ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo -e "$SELECT" && sleep 3 && lutris install/cave-express && Plataforma ;;
     b|B) [ -e ~/Downloads/CowsRevenge.x86_64 ] && cd ~/Downloads && chmod +x CowsRevenge.x86_64 && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo -e "$NOT_FOUND" && sleep 5 && firefox https://pipoypipagames.itch.io/cows-revenge && read -n1 -r -s -p "$CONTINUE" && Plataforma ;;
     c|C) [ -e /usr/games/frogatto ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo && $APT_INSTALL frogatto && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Plataforma ;;
     d|D) [ -e /usr/games/mrrescue ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo && $APT_INSTALL mrrescue && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Plataforma ;;
     e|E) [ -e ~/Downloads/retux-1.3.6-linux-gnu-x86_64/retux ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo && [ -e ~/Downloads/retux-1.3.6-linux-gnu-x86_64.tar.gz ] && cd ~/Downloads && tar -vzxf retux-1.3.6-linux-gnu-x86_64.tar.gz && echo && read -n1 -r -s -p "$CONTINUE" && Plataforma || cd ~/Downloads && wget http://download.savannah.gnu.org/releases/retux/1.3/retux-1.3.6-linux-gnu-x86_64.tar.gz && tar -vzxf retux-1.3.6-linux-gnu-x86_64.tar.gz && echo && read -n1 -r -s -p "$CONTINUE" && Plataforma ;;
     f|F) [ -e ~/Games/supertux/SuperTux_2-v0.6.0.glibc2.14-x86_64.AppImage ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo -e "$SELECT" && sleep 5 && lutris install/supertux && Plataforma ;;
     g|G) [ -e /usr/games/edgar ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || echo && [ -e ~/Downloads/edgar-1.31-1.x86_64.deb ] && sudo dpkg -i ~/Downloads/edgar-1.31-1.x86_64.deb && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Plataforma || cd ~/Downloads && wget https://github.com/riksweeney/edgar/releases/download/1.31/edgar-1.31-1.x86_64.deb && sudo dpkg -i edgar-1.31-1.x86_64.deb && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Plataforma ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Plataforma ;;
   esac
 }

function Survival() {
 clear && echo -e "\\n       \\033[1mMinetest\\033[0m \\n \\n {A} Instalar \\n
 {Z} Retornar ao meunu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r SOBREVIVER && echo -e "\\n"

   case $SOBREVIVER in
     a|A) [ -e /usr/games/minetest ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Survival || echo && $APT_INSTALL minetest* && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Survival ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Survival ;;
   esac
 }
 
function Tdm() {
 clear && echo -e "\\n Jogo furtivo em primeira pessoa, \\n com ambientação gótico steampunk.\\n
       \\033[1mThe Dark Mod\\033[0m \\n \\n {A} Instalação via Lutris \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r TDMX && echo -e "\\n"

   case $TDMX in
     a|A) [ -e ~/Games/the-dark-mod/thedarkmod.x64 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Tdm || echo -e "$SELECT" && sleep 5 && lutris install/the-dark-mod && Tdm ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Tdm ;;
   esac
 }

function Terror() {
 clear && echo -e "\\n {A} Eyes - the Horror Game \\n {B} SCP: Containment Breach \\n {C} Slender The Nine Pages\\n
 {Z} Retornar ao menu anterior \\n"
  read -n1 -r HORROR && echo -e "\\n"

   case $HORROR in
     a|A) [ -e ~/Games/eyes-the-horror-game/eyes-2.2-linux/eyes-2.2-linux ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Terror || echo -e "$SELECT" && sleep 5 && lutris install/eyes-the-horror-game && Terror ;;
     b|B) [ -e ~/Games/scp-containment-breach/drive_c/Program\ Files/SCP\ -\ Containment\ Breach/SCP\ -\ Containment\ Breach.exe ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Terror || echo -e "$SELECT" && sleep 3 && lutris install/scp-containment-breach && Terror ;;
     c|C) [ -e ~/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p " $CONTINUE" && Terror || [ -e ~/Downloads/Slender_The_Nine_Pages_v1.3_for_Linux.rar ] && cd ~/Downloads && unrar x Slender_The_Nine_Pages_v1.3_for_Linux.rar && echo && read -n1 -r -s -p "$CONTINUE" && Terror || echo -e "$NOT_FOUND" && sleep 5 && firefox https://www.indiedb.com/games/slender-the-nine-pages/downloads/slender-the-nine-pages-v131 && read -n1 -r -s -p " $CONTINUE" && Terror ;;
     z|Z) Action ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Terror ;;
   esac
 }

function Arcade() {
 clear && echo -e "\\n {A} Corrrida \\n {B} Mirror Magic \\n {C} Musical
 {D} Pacman Clone \\n {E} Teeworlds \\n {F} Top-down shooter \\n {G} xgalaga++ \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r FLIPERAMA && echo -e "\\n"

   case $FLIPERAMA in
     a|A) Nfs ;;
     b|B) [ -e ~/Downloads/mirrormagic-3.0.0/mirrormagic ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Arcade || echo && [ -e ~/Downloads/mirrormagic-3.0.0.tar.gz ] && cd ~/Downloads && tar -vsxf mirrormagic-3.0.0.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade || cd ~/Downloads && wget https://www.artsoft.org/RELEASES/unix/mirrormagic/mirrormagic-3.0.0.tar.gz && tar -vsxf mirrormagic-3.0.0.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade ;;
     c|C) Music ;;
     d|D) [ -e /usr/games/pacman ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Arcade || echo && [ -e ~/Downloads/pacman-master.zip ] && cd ~/Downloads && unzip pacman-master.zip && $APT_INSTALL libsdl2-* && echo && ./autogen.sh && echo && ./configure && echo && make && echo && make install && cd .. && rm -rf pacman-master.zip pacman-master && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade || cd ~/Downloads && wget https://github.com/ebuc99/pacman/archive/master.zip && unzip pacman-master.zip && cd pacman-master && $APT_INSTALL libsdl2-* && echo && ./autogen.sh && echo && ./configure && echo && make && echo && make install && cd .. && rm -rf pacman-master.zip pacman-master && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade ;;
     e|E) [ -e /usr/games/teeworlds ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Arcade || echo && $APT_INSTALL teeworlds && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade ;;
     f|F) Tdshooter ;;
     g|G) [ -e /usr/games/xgalaga++ ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Arcade || echo && $APT_INSTALL xgalaga++ && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Arcade ;;
   esac
 }
 
function Nfs() { 
 clear && echo -e "\\n {A} H-Craft Championship \\n {B} Stunt Rally \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r MASTER_RACE && echo -e "\\n"
   
   case $MASTER_RACE in
     a|A) [ -e ~/Downloads/hcraft/hcraft ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Nfs || echo && [ -e ~/Downloads/hcraft_v1_3b.zip ] && cd ~/Downloads && unzip hcraft_v1_3b.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Nfs || cd ~/Downloads && wget http://www.irrgheist.com/media/div/hcraft_v1_3b.zip && unzip hcraft_v1_3b.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Nfs ;;
     b|B) [ -e ~/Downloads/StuntRally-2.6-linux64/stuntrally ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Nfs || echo && [ -e ~/Downloads/StuntRally-2.6-linux.tar.gz ] && cd ~/Downloads && tar -vzxf StuntRally-2.6-linux.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Nfs || cd ~/Downloads && wget https://sourceforge.net/projects/stuntrally/files/2.6/StuntRally-2.6-linux.tar.gz && tar -vzxf StuntRally-2.6-linux.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Nfs ;;
     z|Z) Arcade ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Nfs ;;
   esac
 }

function Music() {
 clear && echo -e "\\n     \\033[1m\\033[31mFrets on Fire\\033[0m \\n \\n {A} Instalar \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r MUSICAL && echo -e "\\n"
   
   case $MUSICAL in
     a|A) [ -e /usr/games/fretsonfire ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Music || echo && sudo apt install fretsonfire && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Music ;;
     z|Z) Arcade ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Music ;;
   esac
 }

function Tdshooter() {
 clear && echo -e "\\n {A} AstroMenace \\n {B} Bitfighter \\n {C} C-Dogs SDL
 {D} Maelstron \\n {E} M.A.R.S. \\n {F} The Pandoran War \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r TOPDS && echo -e "\\n"
   
   case $TOPDS in
     a|A) [ -e /usr/games/astromenace ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && $APT_INSTALL astromenace && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter ;;
     b|B) [ -e ~/Games/bitfighter/bitfighter ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo -e "$SELECT" && sleep 5 && lutris install/bitfighter && Tdshooter ;;
     c|C) [ -e ~/Downloads/C-Dogs\ SDL-0.7.3-Linux/bin/cdogs-sdl ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && [ -e ~/Downloads/C-Dogs.SDL-0.7.3-Linux.tar.gz ] && cd ~/Downloads && tar -vsxf C-Dogs.SDL-0.7.3-Linux.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && wget https://github.com/cxong/cdogs-sdl/releases/download/0.7.3/C-Dogs.SDL-0.7.3-Linux.tar.gz && cd ~/Downloads && tar -vsxf C-Dogs.SDL-0.7.3-Linux.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter ;;
     d|D) [ -e /usr/games/maelstrom ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && $APT_INSTALL maelstrom && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter ;;
     e|E) [ -e /usr/games/marsshooter ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && $APT_INSTALL marsshooter && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter ;;
     f|F) [ -e ~/Downloads/tbftss-1.5.0/tbftss ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo && [ -e ~/Downloads/tbftss-1.5.0.linux-x86_64.tar.gz ] && tar -vsxf tbftss-1.5.0.linux-x86_64.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Tdshooter || echo -e "$NOT_FOUND" && sleep 5 && https://parallelrealities.itch.io/tbftss-the-pandoran-war && Tdshooter ;;
     z|Z) Arcade ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Tdshooter ;;
   esac
 }
 
function Adventure() {
 clear && echo -e "\\n {A} The Ur-Quan Masters \\n {B} Vegan on a Desert Island \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r AVENTURA && echo -e "\\n"

   case $AVENTURA in
     a|A) [ -e /usr/games/uqm ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Adventure || echo && $APT_INSTALL uqm && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Adventure ;;
     b|B) $APT_INSTALL snapd && echo && sudo snap install solarus && cd /home/"$USER" && echo && wget https://gitlab.com/voadi/voadi/-/archive/master/voadi-master.zip && echo && unzip voadi-master.zip && rm -rf voadi-master.zip && echo -e "$COMPLETED \\n  Para jogar, siga os passos: \\n  1º -> Abra o \\033[46mSolarus Quest Launcher\\033[0m; \\n  2º -> Clique no botão \\033[1mAdd quest\\033[0m e selecione o diretório \\n  /home/$USER/voadi-master; \\n  3º -> Selecione o arquivo \\033[46mquest.dat\\033[0m e clique em \\033[1mOpen\\033[0m; 4º -> Por fim, \\n  clique no botão \\033[1mPlay\\033[0m para iniciar o jogo. \\n" && read -n1 -r -s -p "$CONTINUE" && Adventure ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Adventure ;;
   esac
}

function Educ() {
 clear && echo -e "\\n {A} Gcompris (suíte educacional) \\n {B} História e Geografia
 {C} Laboratório de Ciências \\n {D} Programação de software \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r OPTIONEDU && echo -e "\\n"

   case $OPTIONEDU in
     a|A) [ -e /usr/games/gcompris-qt ] && echo -e "\\n  Gcompris está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Educ || echo && $APT_INSTALL gcompris && echo && read -n1 -r -s -p "$CONTINUE" && Educ ;;
     b|B) HistGeo ;;
     c|C) Lab ;;
     d|D) Progame ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Educ ;;
   esac
 }

function HistGeo() {
clear && echo -e "\\n {A} Cultivation (simulação social) \\n {B} KGeography (mapas)
 {C} Tux4You Genesis (história do software livre) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r DIMENSAO && echo -e "\\n"

   case $DIMENSAO in
     a|A) [ -e /usr/games/Cultivation ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && HistGeo || echo && $APT_INSTALL cultivation && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && HistGeo ;;
     b|B) [ -e /usr/share/kgeography ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && HistGeo || echo && $APT_INSTALL kgeography && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && HistGeo ;;
     c|C) [ -e ~/Downloads/Genesis-linux-mac/rpgboss ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && HistGeo || [ -e ~/Downloads/Genesis-linux-mac.tar ] && tar -xvf Genesis-linux-mac.tar && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && HistGeo || echo -e "$NOT_FOUND" && sleep 5 && firefox https://mega.nz/#!HWgllKqC!iHTzoxYx6gYOcBbDQVX00XlTbAF23c3klcrxmArZ4Tg && HistGeo ;;
     z|Z) Educ ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && HistGeo ;;
   esac
 }

function Lab() {
 clear && echo -e "\\n {A} 4D Maze Game \\n {B} Biogenesis \\n {C} The Powder Toy \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r SCIENCE && echo -e "\\n"

   case $SCIENCE in
     a|A) [ -e ~/Downloads/maze-2008-exe.jar ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Lab || echo && cd ~/Downloads && wget https://github.com/willianlycan/utilitarios/raw/master/maze-2008-exe.jar && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Lab ;;
     b|B) [ -e ~/Downloads/Biogenesis/ColorMod_1_88 ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Lab || echo && [ -e ~/Downloads/biogenesis_jar_0_9\ Mods_v11.zip ] && cd ~/Downloads && mkdir Biogenesis && mv ~/Downloads/biogenesis_jar_0_9\ Mods_v11.zip ~/Downloads/Biogenesis && cd Biogenesis && unzip biogenesis_jar_0_9\ Mods_v11.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Lab || cd ~/Downloads && wget https://sourceforge.net/projects/biogenesis/files/biogenesis/0.9/biogenesis_jar_0_9%20Mods_v11.zip && mkdir Biogenesis && mv ~/Downloads/biogenesis_jar_0_9\ Mods_v11.zip ~/Downloads/Biogenesis && cd Biogenesis && unzip biogenesis_jar_0_9\ Mods_v11.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Lab ;;
     c|C) [ -e ~/Downloads/The_Powder_Toy/powder64 ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Lab || echo && [ -e ~/Downloads/powder-lin64.zip ] && cd ~/Downloads && mkdir The_Powder_Toy && mv ~/Downloads/powder-lin64.zip ~/Downloads/The_Powder_Toy && cd The_Powder_Toy && unzip powder-lin64.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Lab || cd ~/Downloads && wget https://powdertoy.co.uk/Download/powder-lin64.zip && mkdir The_Powder_Toy && mv ~/Downloads/powder-lin64.zip ~/Downloads/The_Powder_Toy && cd The_Powder_Toy && unzip powder-lin64.zip && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Lab ;;
     z|Z) Educ ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Lab ;;
   esac
 }

function Progame() {
 clear && echo -e "\\n     \\033[1mColobot: Golden Edition\\033[0m \\n \\n {A} Instalar \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r PROGAMER && echo -e "\\n"

   case $PROGAMER in
     a|A) [ -e /usr/games/colobot ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Progame || echo && $APT_INSTALL colobot* && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Progame ;;
     z|Z) Educ ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Progame ;;
   esac
 }

function Esportes() {
 clear && echo -e "\\n {A} BillardGL (bilhar) \\n {B} Neverputt (golfe) \\n {C} YSoccer (futebol) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r SPORTS && echo -e "\\n"

   case $SPORTS in
     a|A) [ -e /usr/games/billard-gl ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Arcade || echo && sudo apt install billard-gl && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Arcade ;;
     b|B) [ -e /usr/games/neverputt ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Esportes || echo && sudo apt install neverputt && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Esportes ;;
     c|C) [ -e ~/Downloads/ysoccer19_linux64/ysoccer ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Esportes || echo && [ -e ~/Downloads/ysoccer19_linux64.tar.gz ] && cd ~/Downloads && tar -vzxf ysoccer19_linux64.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Esportes || cd ~/Downloads && wget https://sourceforge.net/projects/ysoccer/files/YSoccer19/ysoccer19_linux64.tar.gz && tar -vzxf ysoccer19_linux64.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Esportes ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Esportes ;;
   esac
 }
 
function Estrategia() {
 clear && echo -e "\\n {A} Baralho \\n {B} RTS
 {C} Tabuleiro \\n {D} TBS \\n {E} Tower defense \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r ESTRATOSFERA && echo -e "\\n"

   case $ESTRATOSFERA in
     a|A) CardGame ;;
     b|B) Realtime ;;
     c|C) BoardGame ;;
     d|D) Turned ;;
     e|E) Defender ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida!\\033[0m" && sleep 3 && Estrategia ;;
   esac
 }

function CardGame() {
 clear && echo -e "\\n {A} Magarena \\n {B} PySol Fan Club Edition \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r CARDS && echo -e "\\n"

   case $CARDS in
     a|A) [ -e ~/Games/magarena/Magarena.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && CardGame || echo -e "$SELECT" && sleep 5 && lutris install/magarena && CardGame ;;
     b|B) [ -e /usr/games/pysolfc ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && CardGame || echo && $APT_INSTALL pysolfc && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && CardGame ;;
     z|Z) Estrategia ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && CardGame ;;
   esac
 }

function Realtime() {
 clear && echo -e "\\n {A} 0 A.D. \\n {B} Annex: Conquer the World \\n {C} Bos Wars
 {D} Gigalomania \\n {E} Globulation 2 \\n {F} MegaGlest
 {G} OpenDungeons \\n {H} Open Imperium Galactica \\n {I} OpenRA
 {J} Tribal Trouble \\n {K} Warzone 2100 \\n {L} Widelands \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r REAL && echo -e "\\n"

   case $REAL in
     a|A) [ -e /usr/games/0ad ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL 0ad && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     b|B) [ -e ~/Games/annex-conquer-the-world/annex ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo -e "$SELECT" && sleep 3 && lutris install/annex-conquer-the-world && Realtime ;;
     c|C) [ -e /usr/games/boswars ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL boswars && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     d|D) [ -e /opt/gigalomania/gigalomania ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || [ -e ~/Downloads/gigalomaniasrc.zip ] && $APT_INSTALL make && $APT_INSTALL g++ && $APT_INSTALL libsdl2-dev && $APT_INSTALL libsdl2-image-dev && $APT_INSTALL libsdl2-mixer-dev && cd ~/Downloads && unzip gigalomaniasrc.zip && cd ~/Downloads/gigalomaniasrc && sudo make install && sleep 3 && Realtime || echo -e "$NOT_FOUND" && sleep 5 && firefox http://launchpad.net/gigalomania/trunk/1.0.1/+download/gigalomaniasrc.zip && Realtime ;;
     e|E) [ -e /usr/games/glob2 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL glob2 && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     f|F) [ -e /usr/games/megaglest ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL megaglest && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     g|G) [ -e ~/Games/opendungeons/opendungeons.x86_64 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo -e "$SELECT" && sleep 3 && lutris install/opendungeons && Realtime ;;
     h|H) [ -e ~/Downloads/open-ig-launcher.jar ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && cd ~/Downloads && wget https://github.com/akarnokd/open-ig/raw/master/open-ig-launcher.jar && mkdir Open_Imperium_Galactica && mv ~/Downloads/open-ig-launcher.jar ~/Downloads/Open_Imperium_Galactica && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     i|I) [ -e ~/Games/openra/OpenRA-Red-Alert-x86_64.AppImage ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo -e "$SELECT" && sleep 3 && lutris install/openra && Realtime ;;
     j|J) [ -e ~/Downloads/TribalTroubleSetup.sh ] && echo -e "$WHEREISIT /Downloads! \\n" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && cd ~/Downloads && wget https://github.com/sunenielsen/tribaltrouble/raw/master/binaries/TribalTroubleSetup.sh && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     k|K) [ -e /usr/games/warzone2100 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL warzone2100 && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     l|L) [ -e /usr/games/widelands ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Realtime || echo && $APT_INSTALL widelands && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Realtime ;;
     z|Z) Estrategia ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Realtime ;;
   esac
 }
 
function BoardGame() {
 clear && echo -e "\\n {A} Domination (Risk Board Game)
 {B} GNU Go \\n {C} TripleA \\n {D} Xboard (Xadrez) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r BOARD && echo -e "\\n"

   case $BOARD in
     a|A) [ -e ~/Domination/run.sh ] && echo -e "$WHEREISIT /home/$USER! \\n" && read -n1 -r -s -p "$CONTINUE" && BoardGame || echo && [ -e ~/Downloads/Domination_install_1.2.1.jar ] && cd ~/Downloads && java -jar Domination_install_1.2.1.jar && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame || echo && cd ~/Downloads && wget https://sourceforge.net/projects/domination/files/Domination/1.2.1/Domination_install_1.2.1.jar && java -jar Domination_install_1.2.1.jar && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame ;;
     b|B) [ -e /usr/games/gnugo ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && BoardGame || echo && $APT_INSTALL gnugo && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame ;;
     c|C) [ -e ~/TripleA/TripleA ] && echo -e "$WHEREISIT /home/$USER! \\n" && read -n1 -r -s -p "$CONTINUE" && BoardGame || echo && [ -e ~/Downloads/TripleA_1.9.0.0.13066_unix.sh ] && cd ~/Downloads && chmod +x TripleA_1.9.0.0.13066_unix.sh && $APT_INSTALL openjdk-8-jre && ./TripleA_1.9.0.0.13066_unix.sh && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame || cd ~/Downloads && wget https://github.com/triplea-game/triplea/releases/download/1.9.0.0.13066/TripleA_1.9.0.0.13066_unix.sh && chmod +x TripleA_1.9.0.0.13066_unix.sh && $APT_INSTALL openjdk-8-jre && ./TripleA_1.9.0.0.13066_unix.sh && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame ;;
     d|D) [ -e /usr/games/xboard ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && BoardGame || echo && $APT_INSTALL xboard && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && BoardGame ;;
     z|Z) Estrategia ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && BoardGame ;;
   esac
 }
 
function Turned() {
 clear && echo -e "\\n {A} Freeciv \\n {B} FreeOrion \\n {C} MegaMek
 {D} The Battle for Wesnoth \\n {E} UFO: Alien Invasion \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r TURNO && echo -e "\\n"

   case $TURNO in
     a|A) [ -e /usr/games/freeciv ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && $APT_INSTALL freeciv && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned ;;
     b|B) [ -e /usr/games/freeorion ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && $APT_INSTALL freeorion && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned ;;
     c|C) [ -e ~/Downloads/mekhq-0.46.1/MegaMek.jar ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && [ -e ~/Downloads/mekhq-0.46.1.tar.gz ] && cd ~/Downloads && tar -vsxf mekhq-0.46.1.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && cd ~/Downloads && wget https://github.com/MegaMek/mekhq/releases/download/v0.46.1/mekhq-0.46.1.tar.gz && tar -vsxf mekhq-0.46.1.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned ;;
     d|D) [ -e /usr/games/wesnoth ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && $APT_INSTALL wesnoth && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned ;;
     e|E) [ -e /usr/games/ufoai ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Turned || echo && $APT_INSTALL ufoai && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Turned ;;
     z|Z) Estrategia ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Turned ;;
   esac
 }
 
function Defender() {
 clear && echo -e "\\n     \\033[1mMindustry\\033[0m \\n \\n {A} Instalação via Lutris \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r TDEF && echo -e "\\n"
   
   case $TDEF in
     a|A) [ -e ~/Games/mindustry/start.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Defender || echo -e "$SELECT" && sleep 3 && lutris install/mindustry && Defender ;;
     z|Z) Estrategia ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Defender ;;
   esac
 }
 
function Fpsgs() {
 clear && echo -e "\\n {A} Savage XR \\n {B} Unvanquished \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r RTSS && echo -e "\\n"

   case $RTSS in
     a|A) [ -e ~/.wine/drive_c/Program\ Files\ \(x86\)/Savage\ XR ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpsgs || echo && [ -e ~/Downloads/xr_setup-1.0-cl_win_prod.exe ] && cd ~/Downloads && wine xr_setup-1.0-cl_win_prod.exe && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Fpsgs || echo -e "$NOT_FOUND" && sleep 5 && firefox https://savagexr.com/thankyou_windows_newerth_de.html && Fpsgs ;;
     b|B) [ -e ~/Games/unvanquished/daemon ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Fpsgs || echo -e "$SELECT" && sleep 5 && lutris install/unvanquished && Fpsgs ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Fpsgs ;;
   esac
 }
 
function Mmorpg() {
 clear && echo -e "\\n {A} Albion Online \\n {B} Crossfire \\n {C} Daimonin \\n {D} Deliantra 
 {E} PlaneShift \\n {F} RuneLite \\n {G} Stendhal \\n {H} The Mana World \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r MMORPGX && echo -e "\\n"
   
   case $MMORPGX in
     a|A) [ -e ~/Games/albion-online/data/Albion-Online ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo -e "$SELECT" && sleep 3 && lutris install/freedroidrpg && Mmorpg ;;
     b|B) [ -e /usr/games/crossfire-client-gtk2 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && $APT_INSTALL crossfire-client && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg ;;
     c|C) [ -e ~/Downloads/daimonin_client/daimonin ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && [ -e ~/Downloads/Daimonin-installer-20150112.run ] && cd ~/Downloads && chmod +x Daimonin-installer-20150112.run && ./Daimonin-installer-20150112.run && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo -e "$NOT_FOUND" && sleep 5 && firefox https://www.daimonin.org/downloads/sa/downfile/id/5/ && Mmorpg ;;
     d|D) [ -e ~/Downloads/deliantra-gnu-linux-amd64 ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && [ -e ~/Downloads/deliantra-gnu-linux-amd64.tar.gz ] && cd ~/Downloads && tar -vzxf deliantra-gnu-linux-amd64.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && cd ~/Downloads && wget http://dist.schmorp.de/deliantra/ota/deliantra-gnu-linux-amd64.tar.gz && tar -vzxf deliantra-gnu-linux-amd64.tar.gz && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg ;;
     e|E) [ -e ~/opt/PlaneShift/psclient ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && [ -e ~/Downloads/PlaneShift-v0.6.3-x64.run ] && cd ~/Downloads && chmod +x PlaneShift-v0.6.3-x64.run && sudo ./PlaneShift-v0.6.3-x64.run && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && cd ~/Downloads && wget http://ny01.linuxgamepanel.com/files/PlaneShift-v0.6.3-x64.run && chmod +x PlaneShift-v0.6.3-x64.run && sudo ./PlaneShift-v0.6.3-x64.run && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg ;;
     f|F) [ -e ~/Downloads/RuneLite.AppImage ] && cd ~/Downloads && chmod +x RuneLite.AppImage && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || cd ~/Downloads && echo && wget https://github.com/runelite/launcher/releases/download/2.1.0/RuneLite.AppImage && chmod +x RuneLite.AppImage && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg ;;
     g|G) [ -e ~/Games/stendhal/start.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo -e "$SELECT" && sleep 5 && lutris install/stendhal && Mmorpg ;;
     h|H) [ -e /usr/games/manaplus ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg || echo && $APT_INSTALL manaplus && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Mmorpg ;;
     z|Z) Menuini ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Mmorpg ;;
   esac
 }

function Rpg() {
 clear && echo -e "\\n {A} Flare \\n {B} FreeDink \\n {C} Freedroid RPG \\n {D} Roguelike (masmorra) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Esolha uma das opções: "
  read -n1 -r RPGX && echo -e "\\n"

   case $RPGX in
     a|A) [ -e ~/Games/flare/flare.sh ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rpg || echo -e "$SELECT" && sleep 3 && lutris install/flare && Rpg ;;
     b|B) [ -e /usr/games/freedink ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rpg || echo && sudo apt install freedink && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Rpg ;;
     c|C) [ -e ~/Games/freedroidrpg/bin/freedroidRPG ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rpg || echo -e "$SELECT" && sleep 3 && lutris install/freedroidrpg && Rpg ;;
     d|D) Rogueliked ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Rpg ;;
   esac
 }

function Rogueliked() {
 clear && echo -e "\\n {A} Cataclysm: Dark Days Ahead \\n {B} Dungeon Crawl Stone Soup
 {C} Erebus \\n {D} Pathos: Nethack Codex \\n {E} Powder \\n {F} RogueBox Adventures \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r ROGUE && echo -e "\\n"

   case $ROGUE in
     a|A) [ -e /usr/games/cataclysm ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo && $APT_INSTALL cataclysm-dda-* && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked ;;
     b|B) [ -e /usr/games/crawl-tiles ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo && $APT_INSTALL crawl* && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked ;;
     c|C) [ -e ~/Downloads/erebussrc/erebus ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo && $APT_INSTALL g++ libqt4-dev libsfml-dev && cd ~/Downloads/erebussrc && qmake erebus.pro && sudo make install && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked ;;
     d|D) [ -e ~/Games/pathos-nethack-codex/prefix/drive_c/Games/Pathos/PathosGame.exe ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo -e "$SELECT" && sleep 3 && lutris install/pathos-nethack-codex && Rogueliked ;;
     e|E) [ -e /usr/games/powder ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo && $APT_INSTALL powder && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Rogueliked ;;
     f|F) echo && $APT_INSTALL python3 python3-pygame && [ -e ~/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit.zip ] && echo && unzip RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit.zip && echo && read -n1 -r -s -p "$CONTINUE" && Rogueliked || echo -e "$NOT_FOUND" && sleep 3 && firefox https://themightyglider.itch.io/roguebox-adventures && read -n1 -r -s -p "$CONTINUE" && Rogueliked ;;
     z|Z) Rpg ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Rogueliked ;;
   esac
 }
 
function Simuladores() {
 clear && echo -e "\\n {A} Flightgear (simulador de vôo) \\n {B} Opencity (simulador de cidade)
 {C} OpenSSN (simulador de submarino) \\n {D} OpenTTD (simulador de transportes)
 {E} Simulatrans (simulador de transportes) \\n {F} Speed Dreams (simulador de motorsport) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r SIM && echo -e "\\n"

   case $SIM in
     a|A) [ -e /usr/games/fgfs ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo && $APT_INSTALL flightgear && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     b|B) [ -e /usr/games/opencity ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo && $APT_INSTALL opencity && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     c|C) [ -e /usr/games/openssn ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo && $APT_INSTALL openssn && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     d|D) [ -e /usr/games/openttd ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo && $APT_INSTALL openttd && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     e|E) [ -e /usr/games/simutrans ] && echo -e "$INSTALLED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo && $APT_INSTALL simutrans* && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     f|F) [ -e ~/Downloads/speed-dreams-src-base-2.2.2-r6553.tar.xz ] && $APT_INSTALL cmake libopenscenegraph-3.4-dev freeglut3-dev libvorbis-dev libsdl2-dev libopenal-dev libenet-dev libexpat1-dev libjpeg-dev libplib-dev libpng-dev libcurl4-openssl-dev && cd ~/Downloads && mkdir Speed_Dreams_2 && mv ~/Downloads/speed-dreams-src-base-2.2.2-r6553.tar.xz ~/Downloads/Speed_Dreams_2/speed-dreams-src-base-2.2.2-r6553.tar.xz && tar xvfa speed-dreams-src-base-2.2.2-r6553.tar.xz && mkdir build && cd build && cmake -D OPTION_OFFICIAL_ONLY:BOOL=ON .. && make && sudo make install && echo "export PATH=$PATH:/usr/local/games" >> ~/.bashrc && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Simuladores || echo -e "$NOT_FOUND" && sleep 5 && firefox https://sourceforge.net/projects/speed-dreams/files/latest/download && read -n1 -r -s -p "$CONTINUE" && Simuladores ;;
     z|Z) Joojs ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Simuladores ;;
   esac
 }

function Gameplay() {
 clear && echo -e "\\n {A} Emuladores \\n {B} Joystick \\n {C} Lutris
 {D} PlayOnLinux \\n {E} Q4Wine \\n {F} Wine \\n {G} Winetricks \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r Gameplays && echo -e "\\n"

   case $Gameplays in
     a|A) Emuladores ;;
     b|B) echo && $APT_INSTALL joystick && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     c|C) [ -e /bin/lutris ] && echo -e "  A Plataforma de jogos \\033[33mLutris\\033[0m \\033[5mestá instalada! \\033[0m \\n" && read -n1 -r -s -p "$CONTINUE" && Gameplay || echo && sudo add-apt-repository ppa:lutris-team/lutris && apt-get update && apt-get install lutris && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     d|D) [ -e /bin/playonlinux ] && echo -e "  PlayOnLinux está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Gameplay || echo && $APT_INSTALL playonlinux && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     e|E) [ -e /bin/q4wine ] && echo -e "  Q4Wine está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Gameplay || echo && $APT_INSTALL q4wine && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     f|F) [ -e /bin/wine ] && echo -e "  Wine está instalado! \\n" && read -n1 -r -s -p "  Pressione uma tecla para continuar..." && Gameplay || echo && $APT_INSTALL wine && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     g|G) [ -e /bin/winetricks ] && echo -e "  Winetricks está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Gameplay || echo && $APT_INSTALL winetricks && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Gameplay ;;
     z|Z) Menuini ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Gameplay ;;
   esac
 }

function Emuladores() {
 clear && echo -e "\\n {A} BlastEm (Sega Genesis) \\n {B} Dolphin (GameCube & Wii) \\n {C} DOSBox (MS-DOS)
 {D} GNOME Video Arcade (Arcade) \\n {E} Mednafen (Multi) \\n {F} Mupen64Plus-Qt (Nintendo 64)
 {G} Nestopia (NES) \\n {H} PCSX2 (Playstation 2) \\n {I} PCSXR (Playstation One)
 {J} RetroArch (Multi) \\n {K} Stella (Atari 2600) \\n {L} Ybause (Sega Saturn) \\n
 {Z} Retornar ao menu anterior \\n"
 echo -n " => Escolha uma das opções: "
  read -n1 -r EMULA && echo -e "\\n"
   
   case $EMULA in
     a|A) [ -e /usr/games/blastem ] && echo -e "  BlastEm está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL blastem && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     b|B) [ -e /usr/games/dolphin-emu ] && echo -e "  Dolphin está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL dolphin-emu && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     c|C) [ -e /usr/games/dosbox ] && echo -e "  DOSBox está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL dosbox && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     d|D) [ -e /usr/games/gnome-video-arcade ] && echo -e "  GNOME Video Arcade está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL gnome-video-arcade && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     e|E) [ -e /usr/games/mednafen ] && echo -e "  Mednafen está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL mednafen && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     f|F) [ -e /usr/games/mupen64plus-qt ] && echo -e "  Mupen64Plus-Qt está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL mupen64plus-qt && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     g|G) [ -e /usr/games/nestopia ] && echo -e "  Nestopia está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL nestopia && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     h|H) [ -e /usr/games/pcsx2 ] && echo -e "  PCSX2 está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL pcsx2 && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     i|I) [ -e /usr/games/pcsxr ] && echo -e "  PCSXR está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL pcsxr && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     j|J) [ -e /usr/games/retroarch ] && echo -e "  RetroArch está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL retroarch && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     k|K) [ -e /usr/games/stella ] && echo -e "  Stella está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL stella && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     l|L) [ -e /usr/games/ybause ] && echo -e "  Ybause está instalado! \\n" && read -n1 -r -s -p "$CONTINUE" && Emuladores || echo && $APT_INSTALL ybause && echo -e "$COMPLETED" && read -n1 -r -s -p "$CONTINUE" && Emuladores ;;
     z|Z) Gameplay ;; 
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Emuladores ;;
   esac
 }

function Firefox() {
 clear && echo -e "\\n Escolha uma das opções abaixo e aguarde a página 
 do jogo carregar em seu navegador \\033[31mFire\\033[34mfox\\033[0m \\n
 {A} Ancient Beast \\n {B} Asteroidx \\n {C} Survivor \\n {D} Telehack
 {E} Tetris.exe \\n \\n {Z} Retornar ao menu anterior \\n"
 echo -n "  => Esolha uma das opções: "
  read -n1 -r OPTIONK && echo -e "\\n"

   case $OPTIONK in
     a|A) firefox https://beta.ancientbeast.com && Firefox ;;
     b|B) firefox https://kronbits.itch.io/asteroidx && Firefox ;;
     c|C) firefox http://www.schillmania.com/survivor && Firefox ;;
     d|D) firefox http://telehack.com/ && Firefox ;;
     e|E) firefox https://archive.org/details/TETRIS.EXE && Firefox ;;
     z|Z) Menuini ;;
     *) echo -e "  \\033[41mOpção inválida! \\033[0m" && sleep 3 && Firefox ;;
   esac
 }

function TermExec() {
 clear && echo -e "\\n  \\033[4m{A} 4D Maze Game\\033[0m  \\033[4m{B} Biogenesis\\033[0m  \\033[4m{C} C-Dogs SDL\\033[0m
  \\033[4m{D} Cows Revenge\\033[0m  \\033[4m{E} Deliantra\\033[0m  \\033[4m{F} H-Craft Championship\\033[0m
  \\033[4m{G} MegaMek\\033[0m  \\033[4m{H} Mirror Magic\\033[0m  \\033[4m{I} Open Imperium Galactica\\033[0m
  \\033[4m{J} reTux\\033[0m  \\033[4m{K} RogueBox Adventures\\033[0m  \\033[4m{L} RuneLite\\033[0m
  \\033[4m{M} Slender The Nine Pages\\033[0m  \\033[4m{N} Speed Dreams 2\\033[0m  \\033[4m{O} Stunt Rally\\033[0m
  \\033[4m{P} The Pandoran War\\033[0m  \\033[4m{Q} The Powder Toy\\033[0m  \\033[4m{R} Tribal Trouble\\033[0m
  \\033[4m{S} Tux4You Genesis\\033[0m  \\033[4m{T} Uebergame\\033[0m  \\033[4m{U} Warsow\\033[0m  \\033[4m{V} YSoccer\\033[0m \\n
  \\033[4m{Z} Retornar ao menu anterior\\033[0m \\n"
  echo -n "  => Escolha uma das opções: "
   read -n1 -r TERMINATOR && echo -e "\\n"

   case $TERMINATOR in
     a|A) [ -e ~/Downloads/maze-2008-exe.jar ] && cd ~/Downloads && java -jar maze-2008-exe.jar && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     b|B) [ -e ~/Downloads/Biogenesis/ColorMod_1_88/biogenesis.jar ] && cd ~/Downloads/Biogenesis/ColorMod_1_88 && java -jar biogenesis.jar && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     c|C) [ -e ~/Downloads/C-Dogs\ SDL-0.7.3-Linux/bin/cdogs-sdl ] && cd ~/Downloads/C-Dogs\ SDL-0.7.3-Linux/bin && ./cdogs-sdl && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     d|D) [ -e ~/Downloads/CowsRevenge.x86_64 ] && cd ~/Downloads && ./CowsRevenge.x86_64 && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     e|E) [ -e ~/Downloads/deliantra-gnu-linux-amd64 ] && cd ~/Downloads && ./deliantra-gnu-linux-amd64 && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     f|F) [ -e ~/Downloads/hcraft/hcraft ] && cd ~/Downloads/hcraft && ./hcraft && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     g|G) [ -e ~/Downloads/mekhq-0.46.1/MegaMek.jar ] && cd ~/Downloads/mekhq-0.46.1 && java -jar MegaMek.jar && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     h|H) [ -e ~/Downloads/mirrormagic-3.0.0 ] && cd ~/Downloads/ && ./mirrormagic && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     i|I) [ -e ~/Downloads/open-ig-launcher.jar ] && cd ~/Downloads && java -jar open-ig-launcher.jar && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     j|J) [ -e ~/Downloads/retux-1.3.6-linux-gnu-x86_64/retux ] && cd ~/Downloads/retux-1.3.6-linux-gnu-x86_64 && ./retux && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     k|K) [ -e ~/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit/run ] && cd ~/Downloads/RogueBoxAdventures_v3_0_1_GNU+Linux_64Bit && ./run && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     l|L) [ -e ~/Downloads/RuneLite.AppImage ] && cd ~/Downloads && ./RuneLite.AppImage && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     m|M) [ -e ~/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux/Slender\ The\ Nine\ Pages ] && cd ~/Downloads/Slender\ The\ Nine\ Pages\ +\ for\ Linux && ./Slender\ The\ Nine\ Pages && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     n|N) speed-dreams-2 && TermExec ;;
     o|O) [ -e ~/Downloads/StuntRally-2.6-linux64/ ] && cd ~/Downloads/StuntRally-2.6-linux64 && ./stuntrally && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     p|P) [ -e ~/Downloads/tbftss-1.5.0/tbftss ] && cd ~/Downloads/tbftss-1.5.0 && ./tbftss && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     q|Q) [ -e ~/Downloads/The_Powder_Toy/powder64 ] && cd ~/Downloads/The_Powder_Toy && ./powder64 && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     r|R) [ -e ~/Downloads/tribaltrouble/tribaltrouble ] && cd ~/Downloads/tribaltrouble && ./tribaltrouble && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     s|S) [ -e ~/Downloads/Genesis-linux-mac/rpgboss ] && cd ~/Downloads/Genesis-linux-mac && ./rpgboss && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     t|T) [ -e ~/Downloads/Uebergame-1.1.2.0/Uebergame ] && cd ~/Downloads/Uebergame-1.1.2.0 && ./Uebergame && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     u|U) [ -e ~/Downloads/warsow-2.1.2/warsow ] && cd ~/Downloads/warsow-2.1.2 && ./warsow && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     v|V) [ -e ~/Downloads/ysoccer19_linux64/ysoccer ] && cd ~/Downloads/ysoccer19_linux64 && echo && ./ysoccer && TermExec || echo -e "$NOT_INSTALLED" && read -n1 -r -s -p "$CONTINUE" && TermExec ;;
     z|Z) Menuini ;;
     *) echo -e "\\n  \\033[41mOpção inválida! \\033[0m" && sleep 3 && TermExec ;;
   esac
 }

Menuini
