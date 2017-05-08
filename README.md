## Scratch -- a Serverless Stack tutorial

# OS X

Create the project

```unix
cd ~/GitHub/rkiel
git clone git@github.com:rkiel/scratch-spa.git
cd scratch
```

# AWS Console

Create a new user

* click *IAM*
* click *Users*
* click *Add User*
* enter `scratch-admin`

Access Type
* check *Programatic access*

Generate credentials

* check *Generate an access key for each user*
* click *Create*
* click *Download Credentials*

Grant user permissions

* click *Users*
* click *scratch-admin*
* click *Permissions*
* click *Attach Policy*
* click *AdministratorAccess*
* click *Attach Policy*

# OS X

Parse out the AWS credentials

```unix
grep scratch-admin ~/Downloads/credentials.csv |awk  -F "\"*,\"*" '{print $1}' > user_name.txt
grep scratch-admin ~/Downloads/credentials.csv |awk  -F "\"*,\"*" '{print $2}' > password.txt
grep scratch-admin ~/Downloads/credentials.csv |awk  -F "\"*,\"*" '{print $3}' > aws_access_key_id.txt
grep scratch-admin ~/Downloads/credentials.csv |awk  -F "\"*,\"*" '{print $4}' > aws_secret_access_key.txt
grep scratch-admin ~/Downloads/credentials.csv |awk  -F "\"*,\"*" '{print $5}' > console_login.txt
```

Start up vagrant

```unix
vagrant up

vagrant ssh aws

cd /vagrant
```
