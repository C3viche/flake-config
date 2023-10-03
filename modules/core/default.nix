{
  inputs,
  nixpkgs,
  self,
  ...
}: {
  nixos = nixpkgs.lib.nixosSystem {
    specialArgs = {inherit self inputs;};
    modules = [
      ./../../hosts/nixos/hardware-configuration.nix
      ./bootloader.nix
      ./hardware.nix
      ./network.nix
      ./pipewire.nix
      ./services.nix
      ./system.nix
      ./user.nix
      ./environment.nix
      ./programs

      # Wayland based programs for hyprland
    ];
  };  
}
