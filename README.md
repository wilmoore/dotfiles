## Setup / Install

    % bash < <(curl -s https://raw.github.com/wilmoore/dotfiles/master/setup)

## Manual Setup (osx)

- Remap the CAPS LOCK key (to control) using the Keyboard preference pane, under System Preferences. Press the Modifier Keys button and change the action for CAPS LOCK to "Control".

## Management Commands

- `dfup`: update dotfiles (runs ~/.dotfiles/setup).
- `dfls`: list dotfiles.
- `zfup`: zprezto update.
- `brew bundle-dir`: runs `brew bundle` on all brewfiles found under `$HOME/.brews.d`.

## TODO

- Backup/restore for terminal settings.
- Try to replicate the last 5% - 10% of https://github.com/boxen/our-boxen with this setup (since this gets us about 90-95% there).

