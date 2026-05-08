echo "$(sha256sum file.txt | cut -d' ' -f1)" > hash.txt
[ "$(sha256sum file.txt | cut -d' ' -f1)" = "$(cat hash.txt)" ] && echo "Integrity OK" || echo "File Modified"
