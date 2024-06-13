# Puppet Manifest: 0-the_sky_is_the_limit_not.pp
# Description: Ensure Nginx is installed, configured, and running

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define Nginx service
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

# Define Nginx configuration file
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => template('nginx/default.conf.erb'),
  notify  => Service['nginx'],
}

# Notify service restart if configuration changes
file { '/etc/nginx/nginx.conf':
  notify => Service['nginx'],
}

# Template for Nginx default configuration
# Example template content (modify as per your needs)
# You need to create the template file 'default.conf.erb' in 'nginx' directory

# server {
#     listen 80 default_server;
#     listen [::]:80 default_server;
# 
#     root /var/www/html;
#     index index.html index.htm index.nginx-debian.html;
# 
#     server_name _;
# 
#     location / {
#         try_files $uri $uri/ =404;
#     }
# }
