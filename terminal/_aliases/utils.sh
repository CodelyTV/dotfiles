# Mac
alias out="dot package outdated"
alias up="dot package update_all"

# Brew
alias brwe="brew"
alias bsl="brew services list"

# Others
alias c='pbcopy'
alias dc='dot docker connect'
alias ping='prettyping --nolegend'

alias k='kill -9'
alias t="dot filesystem navigate_and_preview_flatten_files"
alias i.='(idea $PWD &>/dev/null &)'
alias o.='open .'

# Alias interesantes

alias myip="curl http://ipecho.net/plain; echo"       # myip:         Public facing IP Address
alias netCons='lsof -i'                               # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'              # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'               # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'     # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'     # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'                # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'                # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'          # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                    # showBlocked:  All ipfw rules inc/ blocked IPs

alias f='open -a Finder ./'                           # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                                        # ~:            Go Home
alias c='clear'                                       # c:            Clear terminal display
alias cdp='cd Proyectos'                              # Proyectos:            Clear terminal display

alias ll='ls -l'
alias la='ls -la'

alias ys='yarn start'
alias nrs='npm run serve'
alias nrd='npm run dev'