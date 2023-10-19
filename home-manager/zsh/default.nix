{
  programs.zsh = {
    enable = true;
    autocd = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh.enable = true;
    shellAliases = {
      # Aliases to rebuild flake
      nrs = "sudo nixos-rebuild switch --flake .#nixos";
      hms = "home-manager switch --flake .#c3viche@nixos";

      # Collect garbage
      ncg = "nix-collect-garbage -d && sudo nix-collect-garbage -d";

      # Nvim
      vi = "nvim";
      vim = "nvim";

      # Sleep
      sleep = "systemctl suspend";
    };
    initExtra = "
      (cat ~/.cache/wal/sequences &)
    ";
  };
}
