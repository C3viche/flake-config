{
  pkgs,
  ...
}: {
  environment = {
    systemPackages = with pkgs; [
      neovim
      git
      wget
    ];

    shells = with pkgs; [zsh];
    pathsToLink = ["/share/zsh"];
  };
}
