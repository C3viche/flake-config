{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    # networkmanager.wifi.backend = "iwd";
    # wireless.enable = true; # enables support via wpa_supplicant
    firewall.enable = false;
  };
}
