# install system and configure them

# should be a created user with 'ryxes' username

cp /etc/nixos/hardware-configuration.nix ./nixos/
sudo nixos-rebuild switch --flake .#ryxes
home-manager switch --flake .#ryxes

fish -c "tide configure --auto --style=Lean --prompt_colors='True color' --show_time=No --lean_prompt_height='Two lines' --prompt_connection=Disconnected --prompt_spacing=Sparse --icons='Many icons' --transient=No"

