# Puppet Manifest: 0-the_sky_is_the_limit_not.pp
# Description: Ensure Nginx is installed, configured, and running

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define Nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/nginx.conf', '/etc/nginx/sites-available/default'],
}

# Define Nginx configuration file (nginx.conf)
file { '/etc/nginx/nginx.conf':
  ensure  => file,
  content => template('/etc/nginx/nginx.conf.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
  owner   => 'root',
  group   => 'root',
  mode    => '0644',  # Ensure permissions are set correctly
}

# Define Nginx default site configuration (default.conf)
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('/etc/nginx/default.conf.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
  owner   => 'root',
  group   => 'root',
  mode    => '0644',  # Ensure permissions are set correctly
}

# Reload Nginx service for configuration changes
exec { 'reload_nginx':
  command     => '/usr/sbin/service nginx reload',
  refreshonly => true,
  subscribe   => Service['nginx'],
}
