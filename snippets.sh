#!because-we-don't really want to ever excute this file

#mass inline text replace:

find . -name '*.jsx' -exec sed -i  bk "s/\.x'/'/" {} \;

#mass rename:

find . -name '*.jsx' | rev | cut -c 4- | rev | xargs -n 1 -I {} mv {}jsx {}js

#beautify all the files:

find . -name '*.js' -exec js-beautify -t -p -X -r -f {} \;

#average of numbers in a file

awk '{T+= $NF} END { print T/NR }' filename

#run command n times

for i in {1..5}; do cmd; done

#run cmd on file w/o find

for i in /some/path/*.whatev; do echo $i; done

#generate a file filled with random bytes
dd if=/dev/urandom of=garbage.out bs=1m count=6 # this dumps 6mb into "grabage.out"

#generate 8 random characters
dd if=/dev/urandom count=1 2> /dev/null | uuencode -m - | sed -ne 2p | cut -c-8

#validate an html or xml file
tidy -errors -q -f error_file.txt the_file.html
