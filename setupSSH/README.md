Script which copies SSH keys amongst hosts
  * automate_ssh_copyID.sh    <-- expect script
  * SSH_hostnames.txt         <-- list of hostnames
  
STEPS:
1) Change these variables in 'automate_ssh_copyID.sh'
  * SSH_PUB_KEY
  * USERNAME
  * PASSWD
  * TIME_OUT
2) Edit 'SSH_hostnames.txt' with hostnames
3) Execute script 'automate_ssh_copyID.sh'

DEPENDENCIES:
  * /usr/bin/expect
  * existing SSH public key
  
NOTE: you may have to disable strict host key checking. For security, you should only do this temporarily.
One approach is to edit your SSH config file
```
# cat /root/.ssh/config 
Host *
    User                  root
    StrictHostKeyChecking no
```
