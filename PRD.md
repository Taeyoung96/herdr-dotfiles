# PRD: herdr-dotfiles

## Problem

herdr configuration lives in `~/.config/herdr/config.toml` on each machine. Without a shared source of truth, settings drift across machines and changes must be replicated manually.

## Goal

Store herdr configuration in a versioned Git repository and provide a one-command setup script so any new machine reaches the same state in seconds.

## Scope

**In scope:**
- `config.toml` — the single herdr user configuration file
- `install.sh` — symlink script for Linux and macOS

**Out of scope:**
- Windows support (herdr does not support Windows)
- Machine-specific config overrides (all machines share identical config)
- herdr binary installation automation

## Design

### Repository structure

```
herdr-dotfiles/
├── config/
│   └── herdr/
│       └── config.toml   # source of truth
├── install.sh             # symlink setup script
├── PRD.md
└── .gitignore
```

### How it works

`install.sh` creates a symlink:

```
~/.config/herdr/config.toml -> <repo>/config/herdr/config.toml
```

If a file already exists at the destination it is backed up as `*.bak` before symlinking.

### New machine setup

```bash
git clone git@github.com:<user>/herdr-dotfiles.git
cd herdr-dotfiles
chmod +x install.sh
./install.sh
```

### Syncing changes

Edit `config/herdr/config.toml` in the repo, commit, push. On other machines:

```bash
git pull
```

No re-run of `install.sh` needed — symlink keeps the live file in sync automatically.

## Constraints

- Linux and macOS only
- Respects `$XDG_CONFIG_HOME` if set; falls back to `~/.config`
- Repository starts private; may be made public once verified to contain no sensitive values

## Success criteria

- One command sets up herdr config on a fresh machine
- `git pull` propagates any config change to all machines
- No manual file copying required
