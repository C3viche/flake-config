{
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
	# Background
	background = "#292929";
	background_opacity = "0.1";

	# Font
	font_family = "Operator Mono Book";
	bold_font = "Operator Mono Thick";
	bold_italic_font = "Operator Mono Medium";
	font_size = 11;
    };
  };
}
