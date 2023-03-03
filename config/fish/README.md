# Fish Shell

## Install Fisher 

> Fisher is a plugin manager for the fish shell.

```bash

```shell
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

## Set fish as default shell

- get fish shell path

```bash
which fish
```

- add fish shell to `/etc/shells`

```bash
vim /etc/shells
```

```bash
chsh -s `which fish`
```
