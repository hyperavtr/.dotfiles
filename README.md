# i3wm/X11 avtr's .dotfiles 
## Depencencies
```bash
sudo emerge x11-wm/i3 x11-terms/alacritty x11-misc/xclip x11-misc/xdg-user-dirs x11-misc/picom x11-misc/i3blocks x11-misc/dunst net-wireless/iw net-wireless/wpa_supplicant app-misc/brightnessctl media-fonts/fontawesome media-fonts/noto-emoji media-gfx/feh media-gfx/maim x11-misc/xdotool x11-misc/xkblayout-state app-admin/stow app-misc/fastfetch x11-misc/rofi app-editors/neovim games-util/mangohud
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
>Simulation is recommended `stow -nDvt ~ .`.

```bash
stow --dotfiles -Dvt ~ .
```
---
