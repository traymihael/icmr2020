#!/bin/sh

echo "start deploy"

export NEW_FOLDER=icmr2020

mkdir /home/icmr2020/public_html/abctest/${NEW_FOLDER}
scp ${AWS_USER}@${AWS_HOST_NAME}:/var/www/html/icmr2020/*.html /home/icmr2020/${NEW_FOLDER}/
scp -r ${AWS_USER}@${AWS_HOST_NAME}:/var/www/html/icmr2020/css /home/icmr2020/${NEW_FOLDER}/
scp -r ${AWS_USER}@${AWS_HOST_NAME}:/var/www/html/icmr2020/js /home/icmr2020/${NEW_FOLDER}/
scp -r ${AWS_USER}@${AWS_HOST_NAME}:/var/www/html/icmr2020/images /home/icmr2020/${NEW_FOLDER}/
scp -r ${AWS_USER}@${AWS_HOST_NAME}:/var/www/html/icmr2020/bulletin /home/icmr2020/${NEW_FOLDER}/

mv /home/icmr2020/public_html /home/icmr2020/pre_html
mv /home/icmr2020/${NEW_FOLDER} /home/icmr2020/public_html

rm -rf /home/icmr2020/pre_html

echo "finish deploy"
