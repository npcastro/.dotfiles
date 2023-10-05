STOW_FOLDERS="bin,git,karabiner,nvim,tmux,zsh"

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "stow $folder"
  stow -D $folder
  stow $folder
done
