set --local cites (anystyle find "$argv[1]")
set --local hash (echo $cites | xxh64sum | gawk '{print $1 }')
echo $cites | jq --sort-keys > $hash.json
rm -v $argv[1]
