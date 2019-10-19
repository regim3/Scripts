#!/bin/bash

text="$@"

if [ text == "fortune" ]
then text = $(fortune)
fi

echo  __________________________________________________
echo / $text                                           /
echo  __________________________________________________
# cat TUX
cat CAT
