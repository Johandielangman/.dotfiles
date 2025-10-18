# Cheatsheet

## Tmux

Tmux will always load nu the `.bashrc` file

To start a session: `tmux`
To kill: `tmux kill-server`

- Leader: `Ctrl-a`

- Split Horizontal: `Ctrl-Alt h`
- Split Vertical: `Ctrl-Alt v`
- Close Pane: `Ctrl-Alt x`
- Navigate Panes: `Alt + ArrowKeys` (I'm not a purist)

- New window: `Ctrl-Alt w`
- Close Window: `Ctrl-Alt q`
- Navigate windows: `leader number`

## Neovim

### Splitting Panes

- Horizonatal Split: `Ctrl-w s`
- Vertical Split: `Ctrl-w v`
- Close current Split: `Ctrl-w q`
- Navigate Splits: `Ctrl + Arrowkeys`


## Zoxide

Better navigation

ref: https://github.com/ajeetdsouza/zoxide

- Use `z` for better navigation
- Use `zq` to view query scores


## Ripgrep

Faster and better searcg than grep

ref: https://github.com/BurntSushi/ripgrep

- Use `rg` for classic searches
- Use `rgh` to include all files (except .git)

## fd

Fatser file searches

ref: https://github.com/sharkdp/fd

- Use `fd` for normal searches
- Use `fdh` to include hidden files

for example: `fd "auth" -t f` to search for files containing auth

## fastfetch

ref: https://github.com/fastfetch-cli/fastfetch/tree/dev/presets/examples

- Run `fastfetch` to see a fastfetch
- Run `neofetch` to see fastfetch + fortune

