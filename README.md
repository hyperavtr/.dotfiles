# .dotfiles

root
  
1. Scripts

First of all cd to the .dotfiles directory in the root section 
```cd $HOME/.dotfiles/root/```  

Add symlinks into the target directory /usr/local/bin (preferable directory becauth it's in a $PATH by default)
```sudo stow -vt /usr/local/bin bin``` 

Delete symlinks from the target directory /usr/local/bin
```sudo stow -vDt /usr/local/bin bin``` 

2. Udev rules    

If you are already in the root section stay there if not
```cd $HOME/.dotfiles/root/```

Add symlinks into the target directory /etc/udev/rules.d
```sudo stow -vt /etc/udev/rules.d rules.d```

Delete symlinks from the target directory /etc/udev/rules.d
```sudo stow -vDt /etc/udev/rules.d rules.d```

.dotfiles

1. .config & ~

cd $HOME/.dotfiles/
 
stow --adopt --dotfiles -v .
