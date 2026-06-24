# STOW_FOLDERS="bin,claude,ghostty,git,karabiner,nvim,oh-my-zsh,tmux,zsh"
STOW_FOLDERS="ghostty"

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
  echo "stow $folder"
  stow -D $folder
  stow $folder
done
