cd ./credentials

grep scratch-admin credentials.csv |awk  -F "\"*,\"*" '{print $1}' > user_name.txt
grep scratch-admin credentials.csv |awk  -F "\"*,\"*" '{print $2}' > password.txt
grep scratch-admin credentials.csv |awk  -F "\"*,\"*" '{print $3}' > aws_access_key_id.txt
grep scratch-admin credentials.csv |awk  -F "\"*,\"*" '{print $4}' > aws_secret_access_key.txt
grep scratch-admin credentials.csv |awk  -F "\"*,\"*" '{print $5}' > console_login.txt
