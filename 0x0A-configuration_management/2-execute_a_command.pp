# Puppet manifest to kill a process named 'killmenow'

exec { 'killmenow':
  path => ['/usr/bin', '/usr/sbin', '/bin']
  command     => 'pkill killmenow',
}
