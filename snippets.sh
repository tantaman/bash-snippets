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

#split a file into x-byte chunks
split -b 40k myfile segment-name-prefix

#mysql one off with no formatting
mysql -B -N -e "select distinct table_schema from information_schema.tables" 

#remove duplicate files?  Gotten from someone else.  Untested.
find . -type f -exec md5sum '{}' ';' | sort | uniq -f 3 -d | sed -e "s/.*(\(.*\)).*/\1/" | xargs rm -f

#kill all the fucking things when killall -9 and pkill fail on you
for p in `ps aux | grep PATTERN | cut -d' ' -f2`; do sudo kill -9 $p; done

#sum up a the numbers in a stream / file
stream | paste -sd+ - | bc
