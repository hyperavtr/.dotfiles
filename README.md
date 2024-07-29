# i3wm/X11 avtr's .dotfiles 
## Depencencies
```bash
dev-vcs/git, app-admin/stow
```
 
## Installation
 
#### root

```bash
cd $HOME/.dotfiles/root
```
---
 >Warning! This behaviour is specifically intended to alter the contents of your stow directory(mix, if files do exist in the symlinks destinations - **stow directory** would be overwritten with this files). If you do not want that, this option is not for you `--adopt`. Simulate at first if you want `sudo stow --adopt -nvt / .`

 ```bash
sudo stow --adopt -vt / .
``` 
>Or safe for cloned stow directory(pure). Simulation is recommended `sudo stow -nvt / .`. 

```bash
sudo stow -vt / .
```
---

#### home

```bash
cd $HOME/.dotfiles/home
```
---
>Warning! This behaviour is specifically intended to alter the contents of your stow directory(mix, if files do exist in the symlinks destinations - **stow directory** would be overwritten with this files). If you do not want that, this option is not for you `--adopt`. Simulate at first if you want `stow --adopt -nvt ~ .`

```bash
stow --adopt --dotfiles -vt ~ .
```
>Or safe for cloned stow directory(pure). Simulation is recommended `sudo stow -nvt / .`. 

```bash
stow --dotfiles -vt ~ .
```
---

## Uninstallation

#### root

```bash
cd $HOME/.dotfiles/root
```
---
>Simulation is recommended `sudo stow -nDvt / .`.

```bash
sudo stow -Dvt / .
```
---

#### home

```bash
cd $HOME/.dotfiles/home
```
---
>Simulation is recommended `stow --dotfiles -nDvt ~ .`.

```bash
stow --dotfiles -Dvt ~ .
```
---
