# dotfiles [![CI](https://github.com/0x4richard/dotfiles/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/0x4richard/dotfiles/actions/workflows/ci.yml)

## Install

Clone onto your laptop:

```shell
git clone git@github.com:0x4richard/dotfiles.git ~/dotfiles
```

- Install [rcm](https://github.com/thoughtbot/rcm):

```shell
brew install rcm
```

- Install the dotfiles:

```shell
env RCRC=$HOME/dotfiles/rcrc rcup
```

- Update the dotfiles

```shell
rcup
```

## Vim

- Clipboard
- LunarVim https://www.lunarvim.org/
- LazyVim (Currently Using) https://www.lazyvim.org/

```
sudo apt-get install xclip
```

## Tmux

### Tmux Plugin [https://github.com/tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

## Font

- List fonts with `brew search font-`

```
brew search font- | rg victor-mono
```

## Credit

- Huge thanks to [Josh Medeski](https://github.com/joshmedeski). I borrowed a lot of configurations from his repo https://github.com/joshmedeski/dotfiles
