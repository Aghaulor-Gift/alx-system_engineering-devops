# Puppet manifest to adjust open file limits for the holberton user

# Define the class
class user_limit {

  # Set the file limits for the user
  exec { 'set_file_limits':
    command => 'echo "holberton soft nofile 10000\nholberton hard nofile 20000" >> /etc/security/limits.conf',
    unless  => 'grep -q "holberton" /etc/security/limits.conf',
  }

  # Reload PAM limits
  exec { 'reload_pam_limits':
    command => 'pam_limits.so',
    path    => '/sbin:/bin:/usr/sbin:/usr/bin',
    onlyif  => 'test -f /lib/x86_64-linux-gnu/security/pam_limits.so',
  }
}
