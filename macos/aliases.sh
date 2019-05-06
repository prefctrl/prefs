#!/usr/bin/env bash

updateos() {
  sudo softwareupdate -i -a
}
alias ios='open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app'
alias flushdns="dscacheutil -flushcache && killall -HUP mDNSResponder"
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias spotoff="sudo mdutil -a -i off"
alias spoton="sudo mdutil -a -i on"
alias voldown="osascript -e 'set volume output muted true'"
alias volup="osascript -e 'set volume output volume 100'"
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias plistbuddy="/usr/libexec/PlistBuddy"
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias cloud='cd ~/Library/Mobile\ Documents/com\~apple\~CloudDocs'
