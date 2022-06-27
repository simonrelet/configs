# var s = JSON.parse(process.argv.splice(1).join('\n')).scripts || {};
# Object.keys(s)
#   .map(k => {
#     const desc = s[k].replace(/^.*#\s*([^#]+)\s*$/, '$1') || s[k].substr(0, 20);
#     return `${k}\t${desc}`;
#   })
#   .join('\n');

function npmr
  if begin [ (count $argv) -eq 1 ]; and [ $argv[1] = "--_completion" ]; end
    set loc (pwd)
    if [ -f "$loc/package.json" ]
      set js (head -n 7 (status -f) | sed -E 's/^# //')
      node -pe "$js" (cat "$loc/package.json")
    else
      printf "\n"
    end

    return 0
  end

  npm run $argv
end
