function npmr
    if begin [ (count $argv) -eq 1 ]; and [ $argv[1] = "--_completion" ]; end
        set loc (pwd)
        if [ -f "$loc/package.json" ]
            node -pe 'Object.keys(JSON.parse(process.argv.splice(1).join("\n")).scripts || {}).join("\n")' (cat "$loc/package.json")
        else
            printf "\n"
        end
        return 0
    end

    npm run $argv
end
