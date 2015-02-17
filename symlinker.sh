#!/bin/bash
############################
# .symlinker.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dev/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="ackrc bash_profile gemrc gitconfig gvimrc irbrc profile tmux.conf vimrc zshrc"    # list of files/folders to symlink in homedir

##########

echo "Removing dotfiles_old"
rm -r $olddir

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# special cases
echo "Creating symlink for .vim/colors"
mv ~/.vim/colors $olddir
ln -s $dir/vim/colors ~/.vim/

echo "Creating symlink for .vim/autoload"
mv ~/.vim/autoload $olddir
ln -s $dir/vim/autoload ~/.vim/

echo "Creating symlink for .vim/bundle"
mv ~/.vim/bundle $olddir
ln -s $dir/vim/bundle ~/.vim/

echo "Creating symlink for bin"
mv ~/bin $olddir
ln -s $dir/bin ~
