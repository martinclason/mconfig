if status --is-interactive
    set -g fish_user_abbreviations

    abbr g git
    abbr gc 'git commit'
    abbr gcm 'git commit -m'
    abbr ga 'git add'
    abbr gaa 'git add --all'
    abbr gp 'git push'
    abbr gs 'git status'
    abbr gco 'git checkout'
    abbr gf 'git fetch'
    abbr gd 'git diff'
    abbr gds 'git diff --staged'
    abbr gba 'git branch -a'
    abbr gpl 'git pull'
    abbr gl 'git log'
    abbr gr 'git rebase'
    abbr gri 'git rebase --interactive'
    abbr gri2 'git rebase --interactive HEAD~2'

    abbr pi 'pod install'

    abbr h 'cd ~'
    abbr lsa 'ls -al'
    abbr c 'clear'

    abbr l "less"
    abbr o "open"
    abbr ot "open -t"
    abbr em "emacs"

    abbr gll "getlab list tdde10vt20"
    abbr glg "getlab get tdde10vt20"
end

