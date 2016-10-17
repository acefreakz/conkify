#!/bin/bash

export LC_ALL=C
sleep 2
conky -q -c ~/.myconky/.conkyrc_system &
sleep 1
conky -q -c ~/.myconky/.conkyrc_clock &
exit
