apt-get -y update
apt-get install software-properties-common python-software-properties -y
add-apt-repository ppa:ondrej/php
# Install EMP + Git
apt-get install -y nginx
apt-get install -y mariadb-server
apt-get install -y curl git
apt-get install php7.0 php7.0-fpm php7.0-mysql php7.0-cli -y
apt-get install php7.0-curl php7.0-xml php7.0-gd php7.0-mcrypt php7.0-simplexml php7.0-mbstring -y
# Install composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
# Install n98-magerun
curl -sSO https://files.magerun.net/n98-magerun.phar
chmod +x ./n98-magerun.phar
mv ./n98-magerun.phar /usr/local/bin/magerun

# Nginx conf
#sudo sed -i -r \
#-e 's/^([ \t]*worker_connections ).*/\1 1024;/' \
#-e '/multi_accept/ c \\tmulti_accept on;' \
#-e '/keepalive_timeout/ c \\tkeepalive_timeout 15;' \
#-e '/server_tokens/ c \\tserver_tokens off;' \
#-e '/server_tokens/ a \\tclient_max_body_size 64m;' \
#-e '/gzip_proxied/ c \\tgzip_proxied any;' \
#-e '/gzip_comp_level/ c \\tgzip_comp_level 2;' \
#-e 's/#[ \t]*gzip_types/gzip_types/' \
#-e '/default_type/ a \\tadd_header X-Frame-Options SAMEORIGIN;' \
#-e '/default_type/ a \\tclient_max_body_size 64M;' \
#/etc/nginx/nginx.conf
