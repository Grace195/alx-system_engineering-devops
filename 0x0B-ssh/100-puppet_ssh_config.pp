#!/usr/bin/env bash
# using puppet to connect without password

file { '/etc/ssh/ssh_config':
    ensure => present,
}
file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => '^#passwordAuthentication',
}

file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'identityfile ~/.ssh/school',
  match  => '^#Identityfile',
}
