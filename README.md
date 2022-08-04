# single-page-nginx

```conf
server {
  listen 80;
  # gzip config
  gzip on;
  gzip_min_length 1k;
  gzip_comp_level 9;
  gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gif image/png;
  gzip_vary on;
  gzip_disable "MSIE [1-6]\.";

  root /usr/share/nginx/html;

  location / {
      try_files $uri $uri/ @router;
      index index.html;
  }
  location @router {
      rewrite ^.*$ /index.html last;
  }
}
```
