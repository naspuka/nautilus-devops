#!/bin/bash

# sudo grep -rnw /var/log/ -e 'packets'

if grep -q packets /var/log/auth.log
    then
        cd /var/log/
        cat auth.log | grep -H "packets" 
    else
        echo "the string is not present in this file"
    fi






















