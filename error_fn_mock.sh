#!/bin/bash

error() {
    blablabla > /dev/null 2>&1
    return 0
}

error
echo "The return code of the error function() is: $?"