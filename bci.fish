function bci --description "Install brew plugins"
  set -l inst (brew cask search | eval "fzf $FZF_DEFAULT_OPTS -m --header='[brew:install]'")

  if not test (count $inst) = 0
    for prog in $inst
      brew cask install "$prog"
    end
  end
end
