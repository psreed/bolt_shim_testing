#
file { '/tmp/test.txt': 
  ensure  => present,
  content => 'this is a test',
}
