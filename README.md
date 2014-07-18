## Table of Contents

This table of contents is not exhaustive in that it only links directly to configuration files that most people are likely interested.

- [Git](active/.config/git/config)
- [Homebrew](active/.config/brew/bundles.d/github.com/wilmoore/brewfiles/wilmoore.brewfile)
- [Tmux](active/.tmux.conf)
- [Vim](active/.vim)
- [Zsh](active/.config/zsh)

## Setup / Install

    % bash < <(curl -s https://raw.github.com/wilmoore/dotfiles/master/setup)

## Manual Setup (osx)

- Remap the CAPS LOCK key (to control) using the Keyboard preference pane, under System Preferences. Press the Modifier Keys button and change the action for CAPS LOCK to "Control".

## Management Commands

- `dfup`: update dotfiles (runs ~/.dotfiles/setup).
- `dfls`: list dotfiles.
- `zfup`: zprezto update.
- `brew bundle-dir`: runs `brew bundle` on all brewfiles found under `$HOME/.brews.d`.

## Tmux

- Tmux sessions are invoked via executable shell scripts located at `$HOME/.tmux`.
- Session scripts are named with a prefix of `@`.
- `$HOME/.tmux` is added to `$PATH` environment variable.
- ZSH tab completes session script names...just type `@`, then press `<TAB>`.
- If the selected session is already running, it will not be re-created -- you will be attached to it.

## Vim

![](https://cloudup.com/clk96MiOHf4+)

## TODO

- Backup/restore for terminal settings.
- Backup/restore for projects (i.e. `projects.json` manifest of remote repo urls -- running `projects restore` pulls down each project).
- Backup/restore for those special hidden files that most projects have (i.e. developer configs, etc.).
- Try to replicate the last 5% - 10% of https://github.com/boxen/our-boxen with this setup (since this gets us about 90-95% there).

