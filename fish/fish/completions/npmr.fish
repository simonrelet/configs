function __fish_npmr_needs_command
  set cmd (commandline -opc)

  if [ (count $cmd) -eq 1 ]
    return 0
  end

  return 1
end

complete -f -c npmr -n '__fish_npmr_needs_command' -a "(npmr --_completion)"
