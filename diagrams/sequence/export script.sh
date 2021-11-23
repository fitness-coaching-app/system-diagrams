mkdir svg
for entry in *
do
  ../.././node_modules/.bin/mmdc -i "$entry" -o "svg/${entry}.svg"
done