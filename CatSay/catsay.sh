#!/bin/bash

text="$@"

if ($text == "fortunes")
then echo Debug
fi

echo  __________________________________________________
echo / $text                                           /
echo  __________________________________________________

# :The command below prints TUX
# cat TUX

# :The command below prints CAT
cat CAT
