function g
	if count $argv > 0
git $argv
else
git status
end
end
