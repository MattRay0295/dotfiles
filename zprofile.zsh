################################
### START ALIASES ##############
################################



######## 2023 ########


alias python="python3.10"
alias pip="pip3"









# UBUNTU SUBSYSTEM
# alias chrome='cd "/mnt/c/Program Files/Google/Chrome Dev/Application" && ./chrome.exe'
#alias ls="colorls"
#alias code="/mnt/c/Users/MattR/AppData/Local/Programs/Microsoft\ VS\ Code/bin"
# alias l="colorls"
alias home=" cd /mnt/c/Users/MattR && lsr"
alias plot_times="node ~/plot-times/server.js"
#alias ls="colorls"
alias chia="/mnt/c/Users/Matt/AppData/Local/chia-blockchain/app-1.2.3/resources/app.asar.unpacked/daemon/chia.exe"
# alias python="python3"
# alias code="/mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe"
# alias z=~
alias bal="cd ~/coinbase-pro-api && node balance.js"
alias z="cd /mnt/c/Users/Administrator/Dropbox/Symlinks/.zshconfig && lsr"
alias www="~/www/"
alias mv='mv -i'
alias cp='cp -i'
alias dev="cd ~/dev/ && lsr"
# alias winuser='cmd.exe /c "echo %USERNAME%"'
# alias py="cd ~/www/python && lsr"
#alias python="python3.7"
#alias py="python3"
#alias python="python3.9"
#alias pip="pip3"
alias rs="cd ~/www/rsdata/ && lsr"
alias readlink="greadlink"
alias dousa="/Users/matt/www/@\ CLIENTS/Weston\ Jenkins && lsr"
alias sshe="cd ~/.ssh && code ."
alias mymysql="mysql -u rsdata -p -h Mattay.io --ssl-ca=~/client-ssl/ca.pem --ssl-cert=~/client-ssl/client-cert.pem --ssl-key=~/client-ssl/client-key.pem"
alias ngrok="~/ngrok http"
alias t="tb"
alias npmi="touch server.js; npm init --yes && code . && code server.js"
alias code_count='find app -iname "*.rb" -type f -exec cat {} \;| wc -l'
alias desk="cd ~/Desktop && lsr"
# alias down="cd /mnt/c/Users/$USER/Downloads && lsr"
alias doc="cd ~/Documents && lsr"
alias c='ssh mattray.io'
alias noder='node server.js'
alias pi="ssh pi@192.168.1.222 -i ~/.ssh/id_rsa_pihole"
alias o="open ."
alias me="cd /Users/matt/www/@\ CLIENTS/Myself/main && lsr"
alias scratch="cd /Users/matt/Library/Application\ Support/JetBrains/RubyMine2020.3/scratches && lsr"
# alias wifioff="networksetup -setairportpower en0 off"
# alias wifion="networksetup -setairportpower en0 on"
alias mysql="mysql -u root"
alias mysqlr="sudo /usr/local/mysql/support-files/mysql.server restart"
alias lsr="ls -altrh"
alias lsrd="ls -ltrh"
alias zipper="/Users/matt/scripts/zipper.sh"
alias gcd="git checkout develop && ggpull"
alias gcm="git checkout master && ggpull"
# alias python="python3"
alias sup="cd ~/Library/Application\ Support && open ."
alias py="python3"
alias youtube-dl="python3 /usr/local/bin/youtube-dl"
alias ngrok="/Users/matt/scripts/ngrok"
alias ngrok_local="/Users/matt/scripts/ngrok http 3000"
alias ....="cd ../../"
alias ......="cd ../../../"
alias local_ip="ipconfig getifaddr en0"
alias gen_pass="LC_ALL=C tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' < /dev/urandom | head -c 15 | pbcopy; echo 'Password copied to clipboard!'"
alias ms='sudo /usr/local/mysql/support-files/mysql.server start'
alias empty_trash='sudo rm -rf ~/.Trash/*'
alias edit_code="code /Users/matt/Library/Application\ Support/Code/User/settings.json"
alias scripts="cd ~/scripts && lsr"
alias ll="ls -altrh"
alias hist='history -f'
alias h='history -f'
# alias drop="cd ~/Dropbox && lsr"
alias drop="cd /mnt/c/Users/$USER/Dropbox && lsr"
alias ss="cd ~/scripts && lsr"
alias sse="code ~/scripts"
alias router_pass="echo '%2=597%748' | pbcopy"
alias e='exit'
alias sup="cd ~/Library/ApplicationSupport && lsr"
alias v="vim"
alias tit="echo titt"
# alias rsync='rsync -aHAxv --numeric-ids --delete --progress -e "ssh -T -c aes128-ctr -o Compression=no -x" $1'

alias run="node server.js"

# Tmux

alias t='tmux a'
alias tn='tmux new -s'
alias tt='tmux a -t'

alias zz="cd ~/Dropbox/Symlinks/.zshconfig && lsr"

alias sweep="find . -name .DS_Store -type f -delete ; find -name .Trashes -type d -delete ; find . -type d | xargs dot_clean -m"

# MongoDB
alias mongod='brew services run mongodb-community'
alias mongod-status='brew services list'
alias mongod-stop='brew services stop mongodb-community'

# Git Aliases
alias gitall="git for-each-ref --format='%(committerdate) %09 %(author) %09 %(refname)' | sort -k5n -k2M -k3n -k4n | grep 'Matt Ray'"
alias gwchn="gwch --name-only"
alias gitsquash='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'
alias commits="git for-each-ref --sort=committerdate refs/remotes/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias gitfiles="git log --oneline  --no-merges master.. "
alias pdiff="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias p="gfa; ggpull; gst"
alias gstl='git stash list --pretty=format:"%C(red)%h%C(reset) - %C(dim yellow)(%C(bold magenta)%gd%C(dim yellow))%C(reset) %<(70,trunc)%s %C(green)(%cr) %C(bold blue)<%an>%C(reset)"'
alias undo="git reset --soft HEAD^"
alias gs="git show "
alias rubo_commit='git commit -m "Rubocop Autocorrections" -n'

# alias gcm="git checkout develop"
# git log --author='^(?!Matthew|Wes|Mike|Michael|Hector|noahwatson|Mehedi|mehedikhan|kyle|chris|mehedi|Chris).*$' --perl-regexp | ack 'Mattay0295@gmail.com' | wc
# git log --author='^(?!Wes|Mike|Michael|Hector|noahwatson|Mehedi|mehedikhan|kyle|chris|mehedi|Chris|H|Kyle|Missy|Tom).*$' --perl-regexp | ack 'matthew.suttles@sourceday.com' | sort | uniq
# git log | ack 'Mattay0295@gmail.com' -A 4 -B 1

# SourceDay Aliases
alias tick="node /Users/matt/scripts/jira-api/getTicketStatusAndComments.js"
alias ts="node /Users/matt/scripts/jira-api/getTicketStatus.js"
alias tickc="node /Users/matt/scripts/jira-api/addComment.js"
alias elasticsearch="docker run -it -d -p 9200:9200 mehedikhan/elasticsearch:2.2.0"
alias rake="bundle exec rake "
alias staging_mysql="mysql -A -u root -p'sourceday1data!' -h 'sourced-stage-db.clkmfath5j4g.us-west-2.rds.amazonaws.com' -D sourceday_staging"
alias pilot_mysql="mysql -A -u root -p'sourceday1data!' -h 'sourced-stage-db.clkmfath5j4g.us-west-2.rds.amazonaws.com' -D new_pilot"
alias sd-server-start="mysql.server start && nohup redis-server &"
alias sd="cd ~/SourceDay-App"
alias guard="redis-server --daemonize yes && memcached -d && cd ~/SourceDay-App && rake guard:backend"
alias rfq="cd ~/SourceDay-RFQ"
alias rr="rake routes"
alias rs="rails server -b 127.0.0.1"
alias rsp="rails server -p 3000 -b 0.0.0.0 -e"
alias rc="rails console"
alias rss="rails server -p 3001"
alias bi="bundle install --jobs 10"
alias slack="cd ~/Downloads/Slack && ll"
alias migrate="bundle exec rake db:migrate"
alias be="bundle exec "
alias rubo="rake rubocop:changed:auto_correct"
alias rspec="bundle exec rspec"

# SD App Servers
alias shuttle_prod="sudo sshuttle -r ubuntu@10.0.13.65 0/0"
alias shuttle_pilot="sudo sshuttle -r ubuntu@10.0.21.39 0/0"
alias demo="ssh ubuntu@10.0.21.111"
alias staging="ssh ubuntu@staging.sourceday.com"
# alias pilot="ssh ubuntu@pilot.sourceday.com"
alias pilot="ssh ubuntu@10.0.21.39"
alias pilotr="ssh root@pilot.sourceday.com"
alias pilotm="ssh Mattay@pilot.sourceday.com"
alias prod_1_worker="ssh ubuntu@10.0.13.65"
alias prod_2_worker="ssh ubuntu@10.0.12.68"
alias prod_3_worker="ssh ubuntu@10.0.11.119"
alias prod_1_app="ssh ubuntu@10.0.11.14"
alias prod_2_app="ssh ubuntu@10.0.12.124"
alias prod_3_app="ssh ubuntu@10.0.13.23"
alias uat="ssh ubuntu@10.0.13.67"
alias uat_app_1="ssh ubuntu@10.0.11.56"
alias uat_app_2="ssh ubuntu@10.0.12.15"
alias qa="ssh ubuntu@44.230.102.14"
alias qa_me="ssh Mattay@44.230.102.14"
alias qa_mock_server="ssh ubuntu@44.227.63.26"
alias training="ssh ubuntu@52.40.212.80"

# RFQ Servers
alias rfqw="ssh ubuntu@10.0.11.92"
alias rfqs="ssh -At ubuntu@18.144.27.39 'ssh ubuntu@10.0.50.72'"
alias rfq_qa="ssh ubuntu@54.184.27.218"

# Angular
alias ngs="ng serve"

alias you="youtube-dl --restrict-filenames --no-mtime -cif best "

# CHIA
#alias chia="/mnt/c/Users/Matt/AppData/Local/chia-blockchain/app-1.1.6/resources/app.asar.unpacked/daemon/chia.exe"
# alias conda="/mnt/c/ProgramData/Anaconda3/_conda.exe"
#alias pwsh="/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe"
# export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
