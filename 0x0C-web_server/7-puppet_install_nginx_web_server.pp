# Define nginx class
class { 'nginx':
  ensure => 'installed',
}

nginx::resource::vhost { 'default':
  www_root       => '/var/www/html',
  ensure         => present,
  listen_port    => '80',
  index_files    => ['index.html'],
  location_cfg_append => {
    '/' => {
      'return' => '301 https://www.youtube.com/watch?v=QH2-TGUlwu4',
    },
  },
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => "Hello World!\n",
}
