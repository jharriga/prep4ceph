#!/usr/bin/expect

# Usage: 
#   $ ./automate_ssh-copyID.sh

# Thanks: 
#   - http://stackoverflow.com/a/33499235/1332401

#################### CONFIG #######################
# Change the param values below for your setup.

# 'hostnames' file contains '\n' delimited list-of-hostnames
set HOSTNAMES "./SSH_hostnames.txt"
set SSH_PUB_KEY "/root/.ssh/id_rsa.pub"
set USERNAME "root"
set PASSWD "redhat"
set TIME_OUT 60

# Following recommendation is not really a verified one:
#   => TIME_OUT should be: (10 * clients in hostnames)
#

####################################################

set timeout $TIME_OUT
set f [open $HOSTNAMES]
set hosts [split [read -nonewline $f] "\n"]
close $f

foreach host $hosts {
    spawn ssh-copy-id -i $SSH_PUB_KEY $USERNAME@$host
    expect {
	"password:" {
	    send "$PASSWD\r"
	    exp_continue
	}
	"already exist on the remote system." {
            exp_continue
        }
    eof
    }
}

puts done


