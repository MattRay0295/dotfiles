
down() {

  if [[ "$(uname)" == "Darwin" ]]; then
    cd ~/Downloads
  else
    if [[ $? -ne 0 ]] ; then
      cd "/mnt/c/Users/$USER/Downloads"
    else
      cd "/mnt/c/Users/$WINUSER/Downloads"
    fi
  fi



}

wifi() {
  WIFI_STATUS=$(ifconfig en0 | awk '/status:/{print $2}')
  if [[ $WIFI_STATUS == 'inactive' ]]; then
    networksetup -setairportpower en0 on
    echo 'WiFi Enabled'
  else
    networksetup -setairportpower en0 off
    echo 'WiFi Disabled'
  fi
}

hide() {
  export HISTFILE=/dev/null
}

show() {
  export HISTFILE="$HOME/Dropbox/Symlinks/.zshconfig/.zsh_history"
}


#chrome() {
 #   DIR=$(readlink -f "$1")
  #  open -na "/Applications/Google Chrome Dev.app" --args --incognito $DIR
#}




copy_uat_host() {
  scp ubuntu@10.0.13.67:/home/ubuntu/application/sourceday/current/config/database.yml /dev/stdout | awk -F'host:' '{print $2}' | tr -d " \t\n\r" | pbcopy
}


zshr() {
  GREEN='\033[0;32m'
  #  source  $HOME/Dropbox/Symlinks/.zshconfig/.zshrc
  # source /mnt/c/Users/Administrator/Dropbox/Symlinks/.zshconfig/.zshrc
  # source /mnt/c/Users/Administrator/Dropbox/Symlinks/.zshconfig/.zprofile
  # source /mnt/c/Users/Administrator/Dropbox/Symlinks/.zshconfig/.zsh_functions
  source  $HOME/.zshrc
  source  $HOME/.zprofile
  source  $HOME/.zsh_functions
  echo -e -n $GREEN
  echo "ZSH Files Refreshed!"
  # echo "ZSH Functions Refreshed!"
}

zsheee() {
  code $HOME/Dropbox/Symlinks/.zshconfig/.zshrc
}

zshe() {
  code $HOME/Dropbox/Symlinks/.zshconfig/.zprofile
}

zshee() {
  code $HOME/Dropbox/Symlinks/.zshconfig/.zsh_functions
}

zips() {
  zip -0 -er "$1.zip" $1
}

zipf() {
  nohup zip -0 -r "$1.zip" $1 >/dev/null 2>&1 &
  echo -e -n $GREEN
  echo "Zipping in background"
}


alias m='git commit -S -nm"'

delete_local_time_machine() {
  for d in $(tmutil listlocalsnapshotdates | grep "-"); do sudo tmutil deletelocalsnapshots $d; done
}


killport() {
  lsof -i tcp:$1 | awk '(NR!=1) && ($1!="Google") && ($1!="firefox") {print $2}' | xargs kill
}



 #code() {
  # /mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe "$@"
 #   /mnt/c/Users/MattR/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code "$@" > /dev/null 2>&1

#   /mnt/c/Program\ Files/Microsoft\ VS\ Code/bin/code "$@" > /dev/null 2>&1
  #/mnt/c/Users/MattR/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe "$1"
# }
# code() {
#   if [[ $# = 0 ]]
#   then
#     if [[ ! -f "$1" ]]; then
#       touch $1
# 	fi
# 	/mnt/c/Users/MattR/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe
# 	#/mnt/d/Program\ Files/Microsoft\ VS\ Code/Code.exe
#     #open -a "Visual Studio Code"
#   else
#     if [[ ! -f "$1" ]]; then
#       touch $1
#     fi
#     local argPath="$1"
#     [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
#     echo 'hii'

# 	/mnt/c/Users/MattR/AppData/Local/Programs/Microsoft\ VS\ Code/Code.exe "$argPath"
#     #/mnt/d/Program\ Files/Microsoft\ VS\ Code/Code.exe "$argPath"
# 	#open -a "Visual Studio Code" "$argPath"
#   fi
# }




f() {
  /bin/bash /Users/$USER/scripts/open_jira_ticket_fed.sh "$@" fixed args;
}

s() {
  ticketArray=( "$@" )
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    /bin/bash /Users/$USER/scripts/open_jira_ticket_sdi.sh $TICKET;
  else
    for arg in "${ticketArray[@]}"; do
      /bin/bash /Users/$USER/scripts/open_jira_ticket_sdi.sh "$arg"
    done
    # /bin/bash /Users/$USER/scripts/open_jira_ticket_sdi.sh "$@" fixed args;
  fi
}


sc() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    /bin/bash /Users/$USER/scripts/copy_sdi_link.sh $TICKET;
  else
    /bin/bash /Users/$USER/scripts/copy_sdi_link.sh "$@";
  fi

}

scc() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    /bin/bash /Users/$USER/scripts/copy_sdi_link_pr.sh $TICKET;
  else
    /bin/bash /Users/$USER/scripts/copy_sdi_link_pr.sh "$@";
  fi

}

st() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    node /Users/$USER/scripts/jira/other/copy_ticket_title.js $TICKET;
  else
    node /Users/$USER/scripts/jira/other/copy_ticket_title.js $TICKET;
  fi
}



jd() {
  node /Users/$USER/scripts/jira/transitions/move_to_qa_and_modify_labels.js "$@";
}



hub_open() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    node /Users/$USER/scripts/jira/other/open_pr.js $TICKET "f";
  else
    node /Users/$USER/scripts/jira/other/open_pr.js "$@" "f";
  fi

}

hub() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    node /Users/$USER/scripts/jira/other/open_pr_all.js $TICKET "f";
  else
    node /Users/$USER/scripts/jira/other/open_pr_all.js "$@" "f";
  fi

}

hubb() {
  if [[ -z "$1" ]]; then
    TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    node /Users/$USER/scripts/jira/other/open_pr.js $TICKET "f";
  else
    node /Users/$USER/scripts/jira/other/open_pr.js "$@" "f";
  fi

}

hub_fed() {
  node /Users/$USER/scripts/jira/other/open_pr_fed.js "$@";
}

ticks() {
  /usr/bin/open -a "/Applications/Google Chrome Dev.app" "https://sourceday.atlassian.net/issues/?jql=assignee%20%3D%20currentUser()%20AND%20status%20not%20in%20(Done%2C%20%22Mark%20for%20Closure%22%2C%20Production%2C%20Resolved%2C%20Closed)%20and%20Sprint%20%3D%20%2216%22%20ORDER%20BY%20updated%20DESC"
}

myprs() {
  /usr/bin/open -a "/Applications/Google Chrome Dev.app" "https://github.com/SourceDay/SourceDay-App/pulls/MattRay0295?q=is:open%20is:pr%20author:MattRay0295%20sort:updated-desc"
}

delete_node_modules () {
  find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
}

cpr() {
  if [[ -z "$1" ]]; then
    # TICKET="$(echo $(git_current_branch) | sed 's/.*-//')"
    BRANCH=$(git_current_branch)
    /usr/bin/open -a "/Applications/Google Chrome Dev.app" "https://github.com/SourceDay/SourceDay-App/pull/new/$BRANCH"
  else
    /usr/bin/open -a "/Applications/Google Chrome Dev.app" "https://github.com/SourceDay/SourceDay-App/pull/new/feature/sdi-$1"
  fi

}


gcbf () {
  git checkout -b feature/sdi-$1
}

gcbb () {
  git checkout -b bugfix/sdi-$1
}

gcbh () {
  git checkout -b hotfix/sdi-$1
}




gcof() {
  git checkout "feature/sdi-$1"
  if [[ -z $(git status -s) ]]; then
    git pull origin "feature/sdi-$1"
  fi
}

gcoh() {
  git checkout "hotfix/sdi-$1"
}

gcob() {
  git checkout "bugfix/sdi-$1"
  if [[ -z $(git status -s) ]]; then
    git pull origin "bugfix/sdi-$1"
  fi
}


ft() {
  grep -rI --exclude="*.sql" --exclude="*.log"  --exclude-dir=node_modules --exclude-dir=.git "$1" . | cut -c1-500 | sort -t: -u -k1,1
}


# Remove node modules recursively
remove_node_modules() {
  find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
}

clear_download_log() {
  sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
}


rsync() {
  rsync -aHAxv $1 root@mattray.io:/root --numeric-ids --delete --progress -e "ssh -T -c aes128-ctr -o Compression=no -x"
}


ns() {
  sudo touch "$1.sh"
  sudo chmod +x "$1.sh"
  # printf "#!/usr/bin/env bash\n" >> "$1.sh"
  printf "#!/bin/sh \n" | sudo tee -a "$1.sh"
  printf "set -o errexit\n" | sudo tee -a "$1.sh"
  printf "set -o pipefail\n" | sudo tee -a "$1.sh"
  code "$1.sh"
  echo "Created $1.sh"
}


pruneimages() {
  find . -iname "*.png" -type f -delete; find . -iname "*.gif" -type f -delete; find . -iname "*.jpg" -type f -delete; find . -iname "*.jpeg" -type f -delete
  echo -e -n '\033[0;32m'
  echo "PNG, JPG, JPEG, GIF deleted in $(echo $PWD)"
}

lock() {
  sudo osascript -e "set Volume 0"
  open -b com.apple.ScreenSaver.engine
}

# sleep() {
 #   sudo osascript -e "set Volume 0"
  #  sudo shutdown -s now
#}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

amex() {
  echo "376782775282006" | pbcopy
  echo -e -n '\033[0;32m'
  echo "Amex Number Copied!"
  echo -en '\033[1;34m'
  echo "01/26 6232"
  echo -en "\033[0m"
}

killapp() {
  ps aux | grep $1 | awk '{print $2}' | xargs sudo kill -9
}

# lockdock() {
#   if [[ $(defaults read com.apple.Dock contents-immutable) = '1' ]]; then
#     defaults write com.apple.Dock contents-immutable -bool false
#     echo -e -n '\033[0;32m'
#     echo "Dock Unlocked"
#   else
#     defaults write com.apple.Dock contents-immutable -bool true
#     echo -e -n '\033[0;32m'
#     echo "Dock Locked"
#   fi
#   killall Dock
# }


chrome() {
  FULLPATH=$(realpath "$1")
  echo $FULLPATH
  /mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe --args --incognito "file://wsl%24/Ubuntu-20.04$FULLPATH"

  # chrome --args --incognito "file://wsl%24/Ubuntu-20.04/root/GrahamCoin/yay.json"
}

function cd() {
  builtin cd "$@" || return
  pwd > $HOME/.my_current_path
}

cd $(cat ~/.my_current_path)



# Mac Low Power Toggle

batt() {
  BATT_STATUS=$(sudo pmset -g | awk '/lowpowermode/{print $2}') #&> /dev/null
 
  if [[ $BATT_STATUS -eq '0' ]]; then
    sudo pmset -b lowpowermode 1
    echo 'Low Power Mode On'
  else
    sudo pmset -a lowpowermode 0
    echo 'Low Power Mode Off'
  fi
}