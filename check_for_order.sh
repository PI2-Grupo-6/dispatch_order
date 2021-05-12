#!/bin/bash

for i in `seq 5 5 60`; do
    (sleep $i && bash last_time_modified) &
done
