{
  pkgs,
  ...
}: {
  programs.starship = {
    enable = true;
    
    enableZshIntegration = true;
    settings = {
      format = "$username$hostname$directory$git_branch$git_state$git_status$git_metrics$fill$nodejs$cmd_duration $jobs $time$line_break$character";
      nodejs.format = "[$symbol($version )]($style)";

      fill.symbol = " ";

      directory = {
        style = "blue";
        read_only = " ";
	truncation_length = 4;
	truncate_to_repo = false;
      };

      character = {
        success_symbol = "[❯](purple)";
        error_symbol = "[❯](red)";
        vicmd_symbol = "[❮](green)";
      };

      git_branch = {
        symbol = " ";
        format = "[$symbol$branch]($style) ";
        style = "bright-purple";
      };

      jobs = {
        symbol = "";
	style = "bold red";
	number_threshold = 1;
	format = "[$symbol]($style)";
      };

      git_status = {
        format = "([$all_status$ahead_behind]($style) )";
	style = "cyan";
      };
 
      git_state = {
        format = "\([$state( $progress_current/$progress_total)]($style)\) ";
        style = "bright-black";
      };
 
      git_metrics.disabled = false;
 
      cmd_duration = {
        format = "[$duration]($style)";
        style = "yellow";
      };
 
      memory_usage.symbol = " "; 

      rust.symbol = " ";
 
      time.disabled = false;

      custom.stunnel = {
        when = "ps aux | grep stunnel | grep -v grep";
	command = "ps -o etime= -p $(ps aux | grep stunnel | grep -v grep | awk '{print $2}')";
	style = "red";
	format = "[TUNNEL OPEN for $output]($style)";
	command_timeout = 10000;
      };
    };
  };
}
