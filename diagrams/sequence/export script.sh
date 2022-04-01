mkdir png
for entry in *
do
  ../.././node_modules/.bin/mmdc -i "$entry" -o "png/${entry}.png" --scale 4
done