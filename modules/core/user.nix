{
  pkgs,
  ...
}: {
  users.users = {
    c3viche = {
      isNormalUser = true;
      openssh.authorizedKeys.keys = [];
      description = "c3viche";
      extraGroups = ["networkmanager" "wheel"];
      packages = with pkgs; [
        firefox
        kate
      ];
    };

  };
    
  users.defaultUserShell = pkgs.zsh;
}
