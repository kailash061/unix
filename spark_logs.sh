yarn application --logs application_1245487_2548 > application_1245487_2548.log

cat application_1245487_2548.log | awk -F"|" '{if($0~"ERROR") {print $0 > "error_line.log"}}'
