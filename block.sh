#!/bin/bash

# USAGE: $ block filename
# EXAMPLE: $ sudo block /etc/hosts

sed -i.bak '/^#127/ s/^#//' $1
sed -i.bak '/^#fe80/ s/^#//' $1

rm $1.bak
