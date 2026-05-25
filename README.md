# herdr-dotfiles

Personal [herdr](https://herdr.dev) configuration, version-controlled and synced across machines.

## Setup

```bash
git clone git@github.com:<user>/herdr-dotfiles.git
cd herdr-dotfiles
chmod +x install.sh
./install.sh
```

## Sync

```bash
git pull
```

Symlinks keep the live config file up to date automatically — no re-run needed.

## Apply changes without restarting

```bash
herdr server reload-config
```

## What this config changes from defaults

### Prefix

| Setting | Default | This config |
|---------|---------|-------------|
| Prefix key | `ctrl+b` | `ctrl+space` |

### Keybindings

| Action | Default | This config |
|--------|---------|-------------|
| Split vertical | `prefix+v` | `prefix+\` |
| Split horizontal | `prefix+minus` | `prefix+minus` (same) |
| Focus pane left | `prefix+h` | `shift+alt+left` |
| Focus pane down | `prefix+j` | `shift+alt+down` |
| Focus pane up | `prefix+k` | `shift+alt+up` |
| Focus pane right | `prefix+l` | `shift+alt+right` |
| Previous workspace | unset | `prefix+[` |
| Next workspace | unset | `prefix+]` |
| Focus agent (by number) | unset | `prefix+alt+1..9` |

### UI

| Setting | Default | This config |
|---------|---------|-------------|
| Theme | default | catppuccin |
| Sound | enabled | disabled |
| Agent labels on pane borders | off | on |
| Agent panel scope | current | all |

## Requirements

- Linux or macOS
- herdr installed
