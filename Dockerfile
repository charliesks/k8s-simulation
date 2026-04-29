FROM nginx:1.27-alpine

# Serve this repo as static content.
# Includes routing for "/draw" -> "/draw.html" (mirrors vercel.json).

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy all static assets (html, css, js, images, etc).
COPY . /usr/share/nginx/html

EXPOSE 80

