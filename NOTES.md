# herdr-dotfiles notes

Reference: https://herdr.dev/docs/configuration/

## Testing config changes

After editing `config/herdr/config.toml`, apply without restarting:

```bash
herdr server reload-config
```

herdr backs up `config.toml` before applying changes.

## Key defaults

| Action | Default key |
|--------|-------------|
| Prefix | `ctrl+b` |
| Detach | `prefix+q` |
| Reattach | run `herdr` in terminal |
| New tab | `prefix+c` |
| Next tab | `prefix+n` |
| Previous tab | `prefix+p` |
| Toggle sidebar | `prefix+b` |
| Workspace picker | `prefix+w` |
| Split vertical | `prefix+v` |
| Split horizontal | `prefix+minus` |
| Zoom pane | `prefix+z` |
| Close pane | `prefix+x` |

## Reset keybindings to defaults

```bash
herdr config reset-keys
```

Backs up `config.toml`, removes `[keys]` and `[[keys.command]]`, restores built-in defaults.
