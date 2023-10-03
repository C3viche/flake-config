{
  services = {
    xserver = {
      # Enable the X11 windowing system
      enable = true;

      # Configure keymap in X11
      layout = "us";
      xkbVariant = "";

      # Enable the KDE Plasma Desktop Environment
      displayManager.sddm.enable = true;
      # desktopManager.plasma5.enable = true;
    };

    # Enable CUPS to print documents
    printing.enable = true;

    openssh = {
      enable = true;
      
      # Forbid root login through SSH
      permitRootLogin = "no";

      # Use keys only. Remove if you want to SSH using password (not recommended)
      passwordAuthentication = false;
    };
  };
}
