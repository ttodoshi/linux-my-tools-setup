#!/bin/bash
mkdir -p ~/.config/pipewire/pipewire-pulse.conf.d
cd ~/.config/pipewire/pipewire-pulse.conf.d/
touch custom.conf
echo "context.exec = [
  { path = "pactl" args = "load-module module-always-sink" }
  { path = "pactl" args = "load-module module-echo-cancel" }
]" > custom.conf
systemctl --user restart pipewire-pulse.service
# choose input device in settings

