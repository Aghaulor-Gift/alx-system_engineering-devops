# Puppet manifest to create a file in /tmp
# Description: Creates a file named 'school' in /tmp with specific
# permissions, owner, group, and content

file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
