for file in $(find . -iname "*.yml")
do
  stem=$(basename "${file}" .yml)
  ct -in-file "${file}" -out-file "${stem}.json"
done
