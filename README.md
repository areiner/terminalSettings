terminalSettings
================

My dotfiles and settings for *nix CLI. Now kept in place here following losing all of my dot files in 2011. Still hoping I may find the originals as I am sure I lost many a custom fuction.

To add the setting in this bashrc file from your git directory, add the following lines to your .bashrc

    if [  -f /path/to/git/directory/bashrc ];
       then . /path/to/git/directory/bashrc
    fi

To add the settings in this vimrc file from your git directory, add the following lines to your .vimrc

    source /path/to/git/directory/vimrc

To add the associated files symbolic links need to be created in the home directory for the bash and vim folders

    ln -s /path/to/git/directory/vim .vim
    ln -s /path/to/git/directory/bash .bash 
