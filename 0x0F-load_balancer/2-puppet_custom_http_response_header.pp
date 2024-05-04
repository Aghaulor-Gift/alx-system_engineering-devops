#  creating a custom HTTP header response with Puppet

package { 'nginx':
  ensure => installed,
}

file { '/etc/nginx/conf.d/custom_headers.conf':
  ensure  => present,
  content => "
    server {
      listen 80 default_server;
      listen [::]:80 default_server;

      server_name _;
      root /var/www/html;
      index index.nginx-debian.html;

      add_header X-Served-By $::hostname;

      location / {
        root /var/www/html;
        index index.html index.htm;
      }
    }
  ",
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
