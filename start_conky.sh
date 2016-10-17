#!/bin/bash

export LC_ALL=C
sleep 2
conky -q -c system.conky &
sleep 1
conky -q -c clock.conky &
exit
