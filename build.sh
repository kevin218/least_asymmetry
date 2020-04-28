#!/bin/bash

#This Source Code Form is subject to the terms of the Mozilla Public
#License, v. 2.0. If a copy of the MPL was not distributed with this
#file, You can obtain one at http://mozilla.org/MPL/2.0/.

#this will remove any partial builds, if there was a failure


if [ "$1" == "clean" ]
then
    rm *.so
    exit
fi

if [ "$1" == "python2" ]
then
    python2 setup.py build_ext --inplace
else
    python3 setup.py build_ext --inplace
fi

#rm -r build/
python unit_test.py
echo "~~You made it!~~"
