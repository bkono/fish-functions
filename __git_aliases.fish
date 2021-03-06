abbr g git
abbr ga 'git add'
abbr gaa 'git add --all .'
abbr gba 'git branch -a'
abbr gbd! 'git branch -D'
abbr gca! 'git commit -v -a --amend'
abbr gci 'git commit -v'
abbr gcl 'git clone'
abbr gcm 'git commit -m'
abbr gco 'git checkout'
abbr gcob 'git checkout -b'
abbr gcot 'git checkout -t'
abbr gd 'git diff -M'
abbr gddv 'git diff develop'
abbr gdl 'git describe --tags --always --dirty'
abbr gdm 'git diff master'
abbr gf 'git fetch'
abbr gl 'git pull'
abbr glg 'git log --stat'
abbr glgs "git log --graph --pretty=tformat:'%Cred%h%Creset}%Cgreen(%cr)}%C(bold blue)<%an>%Creset}%C(yellow)%d%Creset %s' --abbrev-commit --date=relative | column -s '}' -t | less -FXRS"
abbr glgg 'git log --graph --decorate --all --oneline'
abbr glr 'git pull --rebase'
abbr gm! 'git merge'
abbr gp 'git push'
abbr gp! 'git push'
abbr gpt 'git push --tags'
abbr grb 'git rebase'
abbr grbi 'git rebase -i'
abbr grbm 'git rebase -i master'
abbr grhh 'git reset HEAD --hard'
abbr gs 'git status -sb'
abbr gst 'git status'
abbr gwip 'git add --all; git commit -am "WIP"'

function gbsu -d 'set git branch upstream to either origin/current_branch or the provided arg' 
  set branch (git symbolic-ref --short -q HEAD)
  set target
  if count $argv > /dev/null
    set target $argv
  else
    set target $branch
  end

  git branch --set-upstream-to=origin/$target $branch
end
