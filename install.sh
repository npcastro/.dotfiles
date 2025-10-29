STOW_FOLDERS="bin,claude,git,karabiner,nvim,oh-my-zsh,tmux,zsh"

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "stow $folder"
  stow -D $folder
  stow $folder
done
