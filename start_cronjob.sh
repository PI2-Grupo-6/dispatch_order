#!/bin/bash

currentscript="$0"

function finish {
    echo "Since a cronjob should be instantiated only once, this current script (${currentscript}) is being deleted to prevent mistakes."; shred -u ${currentscript};
}

crontab -l > fetch_orders
echo "* * * * * check_for_order.sh > /dev/null 2>&1 | logger -t log_fetch-orders" >> fetch_orders
crontab fetch_orders
rm fetch_orders

trap finish EXIT
