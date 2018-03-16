function g --wraps 'git'
  if count $argv > 0
    git $argv
  else
    git status
  end
end
