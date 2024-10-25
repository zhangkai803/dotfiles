# dotfiles

My personal dotfiles including:

- [x] nvim
- [x] zsh
- [x] vim
- [x] p10k
- [x] yabai
- [x] skhd
- [x] kklog
- [x] hammerspoon

## Sync Configuration

- `vim`: `make install t=vim`
- `nvim`: `make install t=nvim`
- `zsh`: `make install t=zsh`
- `p10k`: `make install t=p10k`
- `yabai`: `make install t=yabai`
- `skhd`: `make install t=skhd`
- `kklog`: `make install t=kklog`
- `hammerspoon`: `make install t=hammerspoon`

## Setup Zsh && p10k

### Install zsh

Please following <https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH>.

### Install ohmyzsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

or

```sh
git clone https://github.com/ohmyzsh/ohmyzsh.git
cd ohmyzsh/tools
./install.sh
```

### Install plugins

#### zsh-autosuggestions

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### p10k

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
