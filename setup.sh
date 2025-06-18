#!/bin/zsh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# List of dotfiles to symlink
FILES=(
  .gitconfig
  .zprofile
  .zshrc
  .git-prompt.sh
)

for file in "${FILES[@]}"; do
  target="$HOME/$file"
  source="$DOTFILES_DIR/$file"

  # Backup if file already exists and isn't a symlink
  if [[ -e "$target" && ! -L "$target" ]]; then
    echo "Backing up existing $file to $file.backup"
    mv "$target" "$target.backup"
  fi

  # Create symlink
  ln -sf "$source" "$target"
  echo "Linked $file"
done

echo "All dotfiles linked."
