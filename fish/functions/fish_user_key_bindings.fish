function fish_user_key_bindings
  fzf_key_bindings
  bind --erase \cr

  # Yank selection to system clipboard in visual mode
  bind -M visual Y fish_clipboard_copy
  
  # Yank entire line to system clipboard in normal mode
  # bind -M normal yy fish_clipboard_copy
  
  # Optional: Paste from system clipboard with 'p'
  # bind -M normal p fish_clipboard_paste
  bind -M normal P fish_clipboard_paste
end
