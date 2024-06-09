<<<<<<< HEAD
# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php`

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
=======
# puppet script that applies fix to Apache server returning a 500 error
exec { 'fix-apache':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => ['/usr/bin', '/usr/sbin', '/bin']
>>>>>>> 0dccb44a415fe6aef7b9cc0ab8129f9424e57430
}
