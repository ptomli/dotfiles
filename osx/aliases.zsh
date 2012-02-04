# show/hide 'hidden' files in Finder
#  a bit risky because it'll kill Finder, even if a move/copy is in progress. 
alias finder-hide-hidden="defaults write com.apple.Finder AppleShowAllFiles NO && restart_finder"
alias finder-show-hidden="defaults write com.apple.Finder AppleShowAllFiles YES && restart_finder"

restart_finder() {
    osascript -e 'tell application "Finder" to quit';
    sleep 1
    osascript -e 'tell application "Finder" to activate';
}