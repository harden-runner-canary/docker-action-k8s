# Use a lightweight base image with curl installed
FROM alpine:latest

# Install curl
RUN apk add --no-cache curl

# Write a script to make the curl requests, list directory contents, and create the text files
COPY script.sh script.sh

RUN chmod +x script.sh

# Set the default command for the container to run the script
CMD ["/script.sh"]
