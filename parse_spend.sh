#!/bin/bash

DATA_FILE="financial_app/daily_spend.csv"

echo "=== Department Cost Report ==="

#วิ่งอ่านไฟล์ daily_spend.csv ทีละบรรทัด และแยกข้อมูลเข้า 3 ตัวแปร
while IFS=',' read -r service department cost; do

	# logic: ถ้า service ไหนจ่ายเดี่ยวสูงกว่า 40 USD ให้ ALERT
	if [ $cost -gt 40 ]; then
		echo " [HIGH COST] Service: $service | Dept: $department | Cost: \$$cost USD "
	else
		echo " [NORMAL] Service: $service | Dept: $department | Cost: \$$cost USD "
	fi
done < $DATA_FILE

