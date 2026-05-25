#!/bin/bash

#1.ตั้งค่า Variables
DAILY_BUDGET=100
CURRENT_SPEND=145 #ตั้งเท่าไหร่ก็ได้

echo "=== Cloud Cost Monitor Running ==="
echo "Daily Budget Limit: $DAILY_BUDGET USD"
echo "Current Daily Spend: $CURRENT_SPEND USD"

#2.เงื่อนไข Logic
#-gt = greater than
if [ $CURRENT_SPEND -gt $DAILY_BUDGET ]; then
	echo "STATUS: [ ALERT ] Budget Exceeded! Cost Anomaly Detected!"
else
	echo "STATUS: [ OK ] Spend is within the budget limit!"
fi
