function f
  # set cur_dir $PWD
  # set full_search_path $(fdfind -t d -s -g -d 5 --search-path ~/Work/source-code/ --search-path /var/www/html/ | fzf-tmux -p --reverse)
  # if test "$full_search_path" != ''
  #   set last_folder_name (basename $full_search_path)
  #   cd $full_search_path
  #   tmux new -s $last_folder_name "vim ."
  # end
  # cd $cur_dir
  ~/.local/scripts/tmux-sessionizer
end
