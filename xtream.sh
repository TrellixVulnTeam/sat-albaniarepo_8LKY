#!/bin/bash
clear
echo " "
echo -e "${txtyellow} ┌────────────────────────────────────────────┐ "
echo -e "${txtyellow} │[R]        Welcome to  Xtream Codes Panel          │ "
echo -e "${txtyellow} └────────────────────────────────────────────┘ "
PS3='Please enter your choice: '
options=("https installation" "http installation" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "https installation")
            wget -q -O  https.sh https://raw.githubusercontent.com/mak-iptv/sat-albaniarepo/main/https.sh && chmod +x https.sh && ./https.sh
            break
            ;;
        "http installation")
            wget -q -O http.sh https://raw.githubusercontent.com/mak-iptv/sat-albaniarepo/main/http.sh && chmod +x http.sh && ./http.sh
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY"
            ;;
    esac
done
