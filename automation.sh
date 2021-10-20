#Task 2
#This the script for the task 2.

#!/bin/bash
apt update -y
apt install -y httpd.2.4.51
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)"> /var/www/html/index.html

#To create a tar archive of apache2 access logs and error logs we can use the script mentioned below.

#!/bin/sh
for file in $(ls /var/log/apache2/*.$(date +"%y.%m.%d" --date="1 day ago").access.log); 

do
    gzip $file
    mv $file.gz /var/log/apache2/archive
done;

#To place the archive of tar into the /tmp/directory we can use the command mentioned below.
tar czf ../var/log/apache2/archive /tmp/directory

#To create the archive we can use the command mentioned below.
/var/www/file.tar.gz file name

#To create a tar of only the .log files we can use the command mentioned below.
exec("tar -zcvf Dhruv-httpd-logs-20012021-101010.tar.gz *.log && rm -f *.log")

#To install awscli we can use the command mentioned below.
sudo apt update
sudo apt install awscli

#Name of the s3 bucket will be upgrad-dhruv.
#To list the s3 bucket we can use the command mentioned below.
aws s3 ls s3://upgrad-dhruv

#To copy the files from ec2 to s3 we can use the command mentioned below.
cp /tmp/${dhruv} -httpd-logs-{20012021-101010}.tar \
s3://${upgrad-dhruv}/${dhruv} -httpd-logs-$(20012021-101010}.tar






