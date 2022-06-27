function __fish_yarr_needs_command
  set cmd (commandline -opc)

  if [ (count $cmd) -eq 1 ]
    return 0
  end

  return 1
end

complete -f -c yarr -n '__fish_yarr_needs_command' -a "(yarr --_completion)"
