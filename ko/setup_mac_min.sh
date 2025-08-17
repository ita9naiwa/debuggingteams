#!/usr/bin/env bash
set -e

# Minimal setup for building the Korean book on macOS
# - Installs Ruby (and Graphviz for diagrams)
# - Installs required gems

brew update
brew install ruby graphviz

gem update --system --no-document || true
gem install --no-document --user-install \
  asciidoctor \
  asciidoctor-diagram \
  asciidoctor-pdf \
  asciidoctor-epub3 \
  rouge

# Optional: add user gems bin to PATH for current shell
# export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

echo "Done. If commands are not found, run:"
echo "  export PATH=\"$(ruby -e 'print Gem.user_dir')/bin:\$PATH\""
echo "Then build: cd ko && make html_local (or make pdf / make epub)"
