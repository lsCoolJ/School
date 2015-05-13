#!/bin/bash

g++ driver.cpp -I . -I ./boost_1_55_0/ -o output -std=c++11 $@

exit 0

