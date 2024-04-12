#!/usr/bin/env bash
# using puppet to make changes to the default ssh config file
# so that one can connect to a server without typing a password.


file_line { 'etc/ssh/ssh_config':
             ensure => present,

content =>"

        #SSH client configuration
        host*
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
	",
}

