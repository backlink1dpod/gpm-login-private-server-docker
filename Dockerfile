FROM ngochoaitn/gpm-login-private-server:php8_1_apache

# Cấp quyền và copy các file cấu hình cần thiết vào hệ thống
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./php/php_large_file_upload.ini /usr/local/etc/php/conf.d/php_large_file_upload.ini
