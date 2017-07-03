if status --is-login
  set HOSTSIZE 1000
  set PAGER more
  set SAVEHIST 1000
  set PATH $HOME/bin $PATH

  # Remove greeting message
  set fish_greeting

  # Colors, uses terminal ones
  set fish_color_autosuggestion '-o' 'black'
  set fish_color_command blue
  set fish_color_comment '-o' 'black'
  set fish_color_cwd '-o' 'black'
  set fish_color_cwd_root red
  set fish_color_end normal
  set fish_color_error red
  set fish_color_escape cyan
  set fish_color_history_current cyan
  set fish_color_host normal
  set fish_color_match cyan
  set fish_color_normal normal
  set fish_color_operator normal
  set fish_color_param normal
  set fish_color_quote green
  set fish_color_redirection normal
  set fish_color_search_match --background=purple
  set fish_color_status red
  set fish_color_user normal
  set fish_color_user_root yellow
  set fish_color_valid_path --underline
  set fish_pager_color_completion normal
  set fish_pager_color_description '555' 'yellow'
  set fish_pager_color_prefix cyan
  set fish_pager_color_progress cyan

  # Colors for prompt
  set prompt_color_arrow '-o' 'black'
  set prompt_color_current_folder normal

  # Colors for git prompt
  set git_prompt_color_separator '-o' 'black'
  set git_prompt_color_branch normal
  set git_prompt_color_commit '-o' 'black'
end
