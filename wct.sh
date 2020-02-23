#!/bin/bash
#reverseip 
clear
GREEN=$(tput setaf 2) #HIJAU
WHITE=$(tput setaf 7) #PUTIH
CYAN=$(tput setaf 6) #CYAN
RED=$(tput setaf 1) #MERAH
#ping "google.com" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | head -1
function bener(){
shuf -e "
${RED}                                  s    
${RED}  x=~                            :8    
${RED} 88x.   .e.   .e.               .88    
${RED}'8888X.x888:.x888        .     :888ooo 
${RED} `8888  888X '888k  .udR88N  -*8888888 
${RED}  X888  888X  888X <888'888k   8888    
${RED}  X888  888X  888X 9888 'Y"    8888    
${RED}  X888  888X  888X 9888        8888    
${RED} .X888  888X. 888~ 9888       .8888Lu= 
${RED} `%88%``"*888Y"    ?8888u../  ^%888*   
${RED}   `~     `"        "8888P'     'Y"    
${RED}                      "P'              
${WHITE}c0ded: by wctBlackhat
" 
}
bener
function gass(){
            yagitu=$(lynx --source -accept_all_cookies "https://viewdns.info/reverseip/?host=$ip&t=1" -dump | grep -Po '<td>(\S+)</td><td')
            ohgitu=$(echo -e "$yagitu" | sed 's/<[^>]\+>/ /g')
            masasih=$(echo -e "$ohgitu" | gawk '{print $1}')
            echo -n "[?] save file (Y/n):"; read f
            echo "$masasih"
        if [[ $f == "Y" ]]; then
          echo -n "${WHITE}[*]name file :"; read sz
          printf "$masasih \n" >> $sz
          printf "${RED}[!] Succes saved file ...."
        fi
            
}
echo -n "[input url or ip] :"; read ip
gass
