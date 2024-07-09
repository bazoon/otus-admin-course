# Use the official nginx image from the docker hub
FROM nginx:1.15.12-alpine

# Install curl
RUN apk add --no-cache curl

# Optionally, you can copy your custom nginx configuration files or other files here
# COPY ./default.conf /etc/nginx/conf.d/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
