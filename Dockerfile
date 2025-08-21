# Use official nginx image as base
FROM nginx:latest

# Copy your custom nginx.conf to override default config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy all your HTML files (including Event_registration_Form.html) to nginx html folder
COPY ./ /usr/share/nginx/html/
COPY Event_Registration_Form.html /usr/share/nginx/html/index.html

# Expose port 80 (nginx default)
EXPOSE 80
