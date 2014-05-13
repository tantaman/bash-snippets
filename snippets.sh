#!because-we-don't really want to ever excute this file

#mass inline text replace:

find . -name '*.jsx' -exec sed -i  bk "s/\.x'/'/" {} \;

#mass rename:

find . -name '*.jsx' | rev | cut -c 4- | rev | xargs -n 1 -I {} mv {}jsx {}js

#beautify all the files:

find . -name '*.js' -exec js-beautify -t -p -X -r -f {} \;

#average of numbers in a file
awk '{T+= $NF} END { print T/NR }' filename

