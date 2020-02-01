#!/usr/bin/env bash
#Testado no BigLinux
function Menuini() {
 clear
  echo -e "\n  +----------------------+ "
  echo -e "  | \033[1mJogos para GNU/Linux\033[0m | "
  echo -e "  +----------------------+ \n"
  echo "  [1   Acessar jogos no navegador          1] "
  echo -e "\n  [2   Baixar e instalar jogos             2] \n"
  echo "  [3   Baixar jogos executáveis            3] "
  echo -e "\n  [4   Baixar jogos para emular via wine   4] \n"
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTION && echo
   
  [[ "$OPTION" =~ ^[0-9]+$ ]] || OPTION=0 
  [ "${OPTION}" -ge 1 -a "${OPTION}" -le 4 ] || OPTION=0
  [ "${OPTION}" = "1" ] && Fire
  [ "${OPTION}" = "2" ] && Joojs
  [ "${OPTION}" = "3" ] && Will
  [ "${OPTION}" = "4" ] && EmuWine
  [ "${OPTION}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Fire() {
 clear
  [ -e /bin/firefox ] || echo -e "\n\033[5m  Firefox Browser não está instalado! \033[0m\n"
  echo -e "\n  +---------------+ "
  echo -e "  | \033[31mBrowser \033[34mGames\033[0m | "
  echo -e "  +---------------+ \n"
  echo -e "  [1   Ancient Beast             1] \n"
  echo -e "  [2   Portal Atari              2] \n"
  echo -e "  [3   Robot Odyssey Rewired     3] \n"
  echo -e "  [4   Sega Genesis              4] \n"
  echo -e "  [5   Survivor (COMMODORE 64)   5] \n"
  echo -e "  [6   Telehack                  6] \n"
  echo -e "  [7   Tetris.exe                7] \n"
  echo -e -n "  => Esolha uma das opções: "
   read -n1 OPTIONK && echo
   
  [[ "$OPTIONK" =~ ^[0-9]+$ ]] || OPTIONK=0 
  [ "${OPTIONK}" -ge 1 -a "${OPTIONK}" -le 7 ] || OPTIONK=0
  [ "${OPTIONK}" = "1" ] && firefox https://beta.ancientbeast.com && echo && Sair
  [ "${OPTIONK}" = "2" ] && firefox http://portalatari.com.br && echo && Sair
  [ "${OPTIONK}" = "3" ] && firefox https://www.robotodyssey.online && echo && Sair
  [ "${OPTIONK}" = "4" ] && firefox https://archive.org/details/sega_genesis_library?tab=collection && echo && Sair
  [ "${OPTIONK}" = "5" ] && firefox http://www.schillmania.com/survivor && echo && Sair
  [ "${OPTIONK}" = "6" ] && firefox http://telehack.com/ && echo && Sair
  [ "${OPTIONK}" = "7" ] && firefox https://archive.org/details/TETRIS.EXE && echo && Sair
  [ "${OPTIONK}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Joojs() {
clear
  echo -e "\n  (a) =  0 A.D.                   = (A) "
  echo "  (b) =  Armagetron Advanced      = (B) "
  echo "  (c) =  AssaultCube              = (C) "
  echo "  (d) =  Cultivation              = (D) "
  echo "  (e) =  Emuladores               = (E) "
  echo "  (f) =  Freeciv                  = (F) "
  echo "  (g) =  Freedroid RPG            = (G) "
  echo "  (h) =  Frogatto                 = (H) "
  echo "  (i) =  Funguloids               = (I) "
  echo "  (j) =  M.A.R.S. - Shooter Game  = (J) "
  echo "  (k) =  Megaglest                = (K) "
  echo "  (l) =  Minetest                 = (L) "
  echo "  (m) =  MMORPG                   = (M) "
  echo "  (n) =  Mr. Rescue               = (N) "
  echo "  (o) =  PySolFC Solitaire        = (O) "
  echo -e "  (p) =  Red Eclipse              = (P) \n"
  echo -n " Esolha uma das opções: "
   read -n1 OPTION2
   
  case $OPTION2 in
    a|A|"") [ -e /usr/games/0ad ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install 0ad && echo && Sair ;;
    b|B|"") [ -e /usr/games/armagetronad ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install armagetronad && echo && Sair ;;
    c|C|"") [ -e /usr/games/assaultcube ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install assaultcube && echo && Sair ;;
    d|D|"") [ -e /usr/games/cultivation ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install cultivation && echo && Sair ;;
    e|E|"") Emuladores ;;
    f|F|"") [ -e /usr/games/freeciv ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install freeciv && echo && Sair ;;
    g|G|"") [ -e /usr/games/freedroidrpg ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install freedroidrpg && echo && Sair ;;
    h|H|"") [ -e /usr/games/frogatto ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install frogatto && echo && Sair ;;
    i|I|"") [ -e /usr/games/funguloids ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install funguloids && echo && Sair ;;
    j|J|"") [ -e /usr/games/marsshooter ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install marsshooter && echo && Sair ;;
    k|K|"") [ -e /usr/games/megaglest ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install megaglest && echo && Sair ;;
    l|L|"") [ -e /usr/games/minetest ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install minetest* && echo && Sair ;;
    m|M|"") Mmorpg ;;
    n|N|"") [ -e /usr/games/mrrescue ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install mrrescue && echo && Sair ;;
    o|O|"") [ -e /usr/games/pysolfc ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install pysolfc && echo && Sair ;;
    p|P|"") [ -e /usr/games/redeclipse ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install redeclipse && echo && Sair ;;
    *) echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair ;;
esac
}

function Emuladores() {
clear
  echo -e "\n  +-------+-----------------------+--------------------+ " 
  echo "  | Letra |  Nome                 |  Plataforma        | "
  echo "  +-------+-----------------------+--------------------+ "
  echo "  | = A = |  BlastEm              |  Sega Genesis      | "
  echo "  | = B = |  Dolphin              |  GameCube & Wii    | "
  echo "  | = C = |  DOSBox               |  MS-DOS            | "
  echo "  | = D = |  GNOME Video Arcade   |  Arcade            | "
  echo "  | = E = |  Mednafen             |  Multi             | "
  echo "  | = F = |  mGBA                 |  Game Boy Advance  | "
  echo "  | = G = |  Mupen64Plus-Qt       |  Nintendo 64       | "
  echo "  | = H = |  Nestopia             |  NES               | "
  echo "  | = I = |  PCSX2                |  Playstation 2     | "
  echo "  | = J = |  PCSXR                |  Playstation One   | "
  echo "  | = K = |  RetroArch            |  Multi             | "
  echo "  | = L = |  Stella               |  Atari 2600        | "
  echo "  | = M = |  Yabause              |  Sega Saturn       | "
  echo -e "  +-------+-----------------------+--------------------+ \n"
  echo -n " Esolha uma das opções: "
   read -n1 EMULA && echo
   
   case $EMULA in
     a|A|"") [ -e /usr/games/blastem ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install blastem && echo && Sair ;;
     b|B|"") [ -e /usr/games/dolphin-emu ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install dolphin-emu && echo && Sair ;;
     c|C|"") [ -e /usr/games/dosbox ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install dosbox && echo && Sair ;;
     d|D|"") [ -e /usr/games/gnome-video-arcade ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install gnome-video-arcade && echo && Sair ;;
     e|E|"") [ -e /usr/games/mednafen ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install mednafen && echo && Sair ;;
     f|F|"") [ -e /usr/games/mgba-qt ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install mgba-qt && echo && Sair ;;
     g|G|"") [ -e /usr/games/mupen64plus-qt ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install mupen64plus-qt && echo && Sair ;;
     h|H|"") [ -e /usr/games/nestopia ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install nestopia && echo && Sair ;;
     i|I|"") [ -e /usr/games/pcsx2 ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install pcsx2 && echo && Sair ;;
     j|J|"") [ -e /usr/games/pcsxr ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install pcsxr && echo && Sair ;;
     k|K|"") [ -e /usr/games/retroarch ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install retroarch && echo && Sair ;;
     l|L|"") [ -e /usr/games/stella ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install stella && echo && Sair ;;
     m|M|"") [ -e /usr/games/ybause ] && clear && echo -e "\n\033[5m O jogo está instalado! \033[0m\n" && Sair || echo && apt install ybause && echo && Sair ;;
     *) echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair ;;
esac
}

function Mmorpg() {
clear
  echo -e "\n\033[5m   +-----------------+ "
  echo -e "   |                 | "
  echo -e "   | \033[0m \033[1m \033[31mM \033[33mM \033[32mO \033[34mR \033[35mP \033[36mG \033[0m  \033[5m| "
  echo -e "   |                 | "
  echo -e "\033[5m   +-----------------+ \033[0m\n"
  echo -e "  [1  Crossfire   1]  \=\  [5  RuneLite  5]  "
  echo -e "                       \=\ "
  echo -e "   [2  Daimonin    2]   \=\  [6  Ryzon     6]  "
  echo -e "                         \=\ "
  echo -e "    [3  Deliantra   3]    \=\  [7  Stendhal  7]  "
  echo -e "                           \=\ "
  echo -e "     [4  PlaneShift  4]     \=\  [8  TibiaBR   8]  \n"
  echo -e -n "  => Esolha uma das opções: "
   read -n1 MMORPGX && echo
   
  [[ "$MMORPGX" =~ ^[0-9]+$ ]] || MMORPGX=0 
  [ "${MMORPGX}" -ge 1 -a "${MMORPGX}" -le 8 ] || MMORPGX=0
  [ "${MMORPGX}" = "1" ] && firefox http://crossfire.real-time.com && echo && Sair
  [ "${MMORPGX}" = "2" ] && firefox https://www.daimonin.org && echo && Sair
  [ "${MMORPGX}" = "3" ] && firefox http://www.deliantra.net && echo && Sair
  [ "${MMORPGX}" = "4" ] && firefox http://www.planeshift.it && echo && Sair
  [ "${MMORPGX}" = "5" ] && firefox https://runelite.net && echo && Sair
  [ "${MMORPGX}" = "6" ] && firefox https://ryzom.com && echo && Sair
  [ "${MMORPGX}" = "7" ] && firefox https://stendhalgame.org && echo && Sair
  [ "${MMORPGX}" = "8" ] && firefox https://www.tibiabr.com/Downloads && echo && Sair
  [ "${MMORPGX}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Will() {
clear
  [ -e /bin/firefox ] || echo -e "\n\033[5m  Firefox Browser não está instalado! \033[0m\n"
  echo -e "\n  [ 1  A Journey To Eternity  1 ]"
  echo "  [ 2  Bitfighter             2 ]"
  echo "  [ 3  Endless Sky            3 ]"
  echo "  [ 4  H-Craft Championship   4 ]"
  echo "  [ 5  Operation Fungus       5 ]"
  echo "  [ 6  Sage Fusion            6 ]"
  echo "  [ 7  Veloren                7 ]"
  echo -e "  [ 8  Warsow                 8 ]\n"
  echo -n " Esolha uma das opções: "
   read -n1 GAMEON
   
  [[ "$GAMEON" =~ ^[0-9]+$ ]] || GAMEON=0 
  [ "${GAMEON}" -ge 1 -a "${GAMEON}" -le 8 ] || GAMEON=0
  [ "${GAMEON}" = "1" ] && firefox https://gamejolt.com/games/a-journey-to-eternity/168176 && echo && Sair
  [ "${GAMEON}" = "2" ] && firefox https://gamejolt.com/games/bitfighter/20546 && echo && Sair
  [ "${GAMEON}" = "3" ] && firefox https://github.com/endless-sky/endless-sky/releases && echo && Sair
  [ "${GAMEON}" = "4" ] && firefox http://www.irrgheist.com/games.htm && echo && Sair
  [ "${GAMEON}" = "5" ] && firefox https://gamejolt.com/games/operation-fungus/113698 && echo && Sair
  [ "${GAMEON}" = "6" ] && firefox https://gamejolt.com/games/sage-fusion/69786 && echo && Sair
  [ "${GAMEON}" = "7" ] && firefox https://veloren.net/welcome/ && echo && Sair
  [ "${GAMEON}" = "8" ] && firefox https://warsow.net/download && echo && Sair
  [ "${GAMEON}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function EmuWine() {
clear
  [ -e /bin/firefox ] || echo -e "\n\033[5m  Firefox Browser não está instalado! \033[0m\n"
  [ -e /bin/wine ] || echo -e "\033[5m  Wine não está instalado! \033[0m\n"
  echo -e "\n  +-----------+ "
  echo -e "  | \033[31m\033[1mW""\033[32mi""\033[33mn""\033[34me""\033[0m Play | " 
  echo -e "  +-----------+ \n"
  echo -e "  [1  Jogos M.U.G.E.N  1] \n"
  echo "  [2  MMORPG's         2] "
  echo -e "\n  [3  Outros           3] \n"
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTION4
   
  [[ "$OPTION4" =~ ^[0-9]+$ ]] || OPTION4=0 
  [ "${OPTION4}" -ge 1 -a "${OPTION4}" -le 3 ] || OPTION4=0
  [ "${OPTION4}" = "1" ] && Mugen
  [ "${OPTION4}" = "2" ] && Mmorpg2
  [ "${OPTION4}" = "3" ] && Outros
  [ "${OPTION4}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Mugen() {
clear
  echo -e "\n  +-----------------+ "
  echo -e "  | \033[36mJogos M.U.G.E.N\033[0m | "
  echo -e "  +-----------------+ \n"
  echo -e "  [1   CDZ - A Guerra Galáctica             1] \n"
  echo -e "  [2   Hunter x Hunter M.U.G.E.N v3         2] \n"
  echo -e "  [3   Marvel Super Heroes 2019             3] \n"
  echo -e "  [4   One Piece Fighting Adventure         4] \n"
  echo -n "  => Esolha uma das opções: "
   read -n1 OPTIONX && echo
   
  [[ "$OPTIONX" =~ ^[0-9]+$ ]] || OPTIONX=0 
  [ "${OPTIONX}" -ge 1 -a "${OPTIONX}" -le 4 ] || OPTIONX=0
  [ "${OPTIONX}" = "1" ] && firefox http://www.mediafire.com/file/24b5mo83o6mta5d/CDZ_-_A_GUERRA_GAL%25C3%2581CTICA.rar/file && echo && Sair
  [ "${OPTIONX}" = "2" ] && firefox https://www.mediafire.com/file/l4b857c3gh6dn21/Hunter_x_Hunter_M.U.G.E.N_V3_by_danteg9.rar/file && echo && Sair
  [ "${OPTIONX}" = "3" ] && firefox http://www.mediafire.com/file/xjbv0r4aaez4x9h/Marvel_Super_Heroes_Mugen_Edition_2019.rar/file && echo && Sair
  [ "${OPTIONX}" = "4" ] && firefox https://drive.google.com/file/d/1nPR1HF_MxzvqZDCzfWu9LruBcVU-_wcM/view && echo && Sair
  [ "${OPTIONX}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Mmorpg2() {
clear
  echo -e "\n\033[5m   +-----------------+ "
  echo -e "   |                 | "
  echo -e "   | \033[0m \033[1m \033[31mM \033[33mM \033[32mO \033[34mR \033[35mP \033[36mG \033[0m  \033[5m| "
  echo -e "   |                 | "
  echo -e "\033[5m   +-----------------+ \033[0m\n"
  echo -e "  [1  AIKA Online    1] \n"
  echo -e "  [2  Albion Online  2] \n"
  echo -e "  [3  L2 Killer      3] \n"
  echo -e "  [4  WYDBR          4] \n"
  echo -e -n "  => Esolha uma das opções: "
   read -n1 MMORPGY && echo
   
  [[ "$MMORPGY" =~ ^[0-9]+$ ]] || MMORPGY=0 
  [ "${MMORPGY}" -ge 1 -a "${MMORPGY}" -le 4 ] || MMORPGY=0
  [ "${MMORPGY}" = "1" ] && firefox https://aika.ongame.net/download/?ref=menu && echo && Sair
  [ "${MMORPGY}" = "2" ] && firefox https://albiononline.com/pt/download && echo && Sair
  [ "${MMORPGY}" = "3" ] && firefox https://www.l2killer.org/?page=download && echo && Sair
  [ "${MMORPGY}" = "4" ] && firefox https://wydbr.com/download-liberado-wydbr-versao-exclusiva && echo && Sair
  [ "${MMORPGY}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Outros() {
clear
  echo -e "\n\033[5m  +------------------------------------------+ \033[0m"
  echo -e "\033[5m  |                                          | "
  echo -e "  |\033[0m 1  Bootfighter Windom XP sp-2          1 \033[5m| "
  echo -e "  |\033[0m 2  Savage XR                           2 \033[5m| "
  echo -e "  |\033[0m 3  Terrordrome: Rise of the Boogeyman  3 \033[5m| "
  echo -e "  |                                          | "
  echo -e "  +------------------------------------------+ \033[0m\n"
  echo -n "  => Esolha uma das opções: "
   read -n1 OTHERS && echo
  
  [[ "$OTHERS" =~ ^[0-9]+$ ]] || OTHERS=0 
  [ "${OTHERS}" -ge 1 -a "${OTHERS}" -le 3 ] || OTHERS=0
  [ "${OTHERS}" = "1" ] && firefox https://baixar.freedownloadmanager.org/Windows-PC/Bootfighter-Windom-XP-sp-2/GRATUITO-1.031.html && echo && Sair
  [ "${OTHERS}" = "2" ] && firefox https://savagexr.com/thankyou_windows_newerth_uk.html && echo && Sair
  [ "${OTHERS}" = "3" ] && firefox http://terrordrome-thegame.com/download && echo && Sair
  [ "${OTHERS}" = "0" ] && echo -e "\n\033[41m Opção inválida! \033[0m\n" && Sair
}

function Sair() {
echo -e -n "   Sair? [S/N] "
  read -n1 SAIR
   case $SAIR in
   s|S|"") clear && exit ;;
   n|N|"") Menuini ;;
   *) echo -e "\n\033[41m Opção inválida!""\033[0m\n" && Sair
 esac 
}
Menuini
