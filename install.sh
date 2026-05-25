#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"

link() {
  local src="$1"
  local dst="$2"

  mkdir -p "$(dirname "$dst")"

  if [ -L "$dst" ]; then
    echo "  [skip] already symlinked: $dst"
  elif [ -f "$dst" ]; then
    echo "  [backup] $dst -> $dst.bak"
    mv "$dst" "$dst.bak"
    ln -sf "$src" "$dst"
    echo "  [linked] $dst"
  else
    ln -sf "$src" "$dst"
    echo "  [linked] $dst"
  fi
}

echo "==> Installing herdr dotfiles"
link "$DOTFILES_DIR/config/herdr/config.toml" "$CONFIG_DIR/herdr/config.toml"
echo "==> Done"
