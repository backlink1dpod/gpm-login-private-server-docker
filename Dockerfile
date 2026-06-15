FROM ngochoaitn/gpm-login-private-server:php8_1_apache

# Tải file chứng chỉ bảo mật SSL của TiDB (Let's Encrypt CA)
RUN curl -o /etc/ssl/certs/isrgrootx1.pem https://letsencrypt.org/certs/isrgrootx1.pem

# Các file cấu hình cũ giữ nguyên
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./php/php_large_file_upload.ini /usr/local/etc/php/conf.d/php_large_file_upload.ini
