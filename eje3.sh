#!/bin/bash

cd /usr/share/dict/

rep=$(grep -c 'tato' american-english)
echo "$rep palabras contienen \"tato\""

rep=$(grep -c 'ing$' american-english)
echo "$rep palabras terminan con \"ing\""

rep=$(grep -c '^Arg' american-english)
echo "$rep palabras empiezan con \"Arg\""

rep=$(grep -c '^a[a-z]*ing$' american-english)
echo "$rep palabras empiezan con \"a\" y terminan con \"ing\""

rep=$(egrep -c '^[a-z]{19,}' american-english)
echo "$rep palabras contienen al menos 19 letras"

rep=$(grep -c '^z[a-z]*[aeiou]$' american-english)
echo "$rep palabras empiezan con \"z\" y terminan con una vocal"
