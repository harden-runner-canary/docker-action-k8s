#!/bin/sh

echo "Environment Variables:"
env

DOMAINS="google.com youtube.com facebook.com"

count=0

for domain in $DOMAINS; do
    count=$((count + 1))
    echo "[${count}] Making request to ${domain}"
    if curl -m 5 -Is https://$domain; then
        echo "Success: Request to ${domain} was successful"
    else
        echo "Error: Unable to connect to ${domain}"
    fi

    # sleep 1
done

echo "listing content with ls"
ls
# echo "hello" >~/helloworld1.txt
# echo "hello" >~/helloworld2.txt
# echo "listing content with ls"
ls ~
echo "sleep for ${SLEEPINSECONDS:-5} seconds"
sleep ${SLEEPINSECONDS:-5}
