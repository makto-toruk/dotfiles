# dotfiles

This repository contains my personal dotfiles and a setup script to manage them. The dotfiles are managed using symbolic links, which allows for easy updates and maintenance.

## Setup

To set up the dotfiles on a new machine:

1. Clone this repository:
   ```bash
   git clone <repository-url> ~/dev/dotfiles
   cd ~/dev/dotfiles
   ```

2. Make the setup script executable:
   ```bash
   chmod +x setup.sh
   ```

3. Run the setup script:
   ```bash
   ./setup.sh
   ```

The setup script will:
- Create symbolic links for all dotfiles in your home directory
- Automatically backup any existing dotfiles (with `.backup` extension) before creating symlinks
- Show progress as each file is linked

## Current Dotfiles

The following dotfiles are currently managed:
- `.gitconfig`
- `.zprofile`
- `.zshrc`
- `.git-prompt.sh`

## Adding New Dotfiles

To add a new dotfile to the managed set:

1. Add your dotfile to this repository
2. Edit `setup.sh` and add the filename to the `FILES` array:
   ```bash
   FILES=(
     .gitconfig
     .zprofile
     .zshrc
     .git-prompt.sh
     your-new-file  # Add your new file here
   )
   ```
3. Run `setup.sh` again to create the new symlink

## Note

The setup script automatically determines the dotfiles directory location, so it will work regardless of where you clone the repository.