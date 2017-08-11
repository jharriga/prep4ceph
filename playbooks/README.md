Collection of ansible playbooks which prepare systems for ceph-ansible
  * cfg_network      <-- configures network ifaces (all systems)
  * cfg_OSDdevices   <-- deletes partitions from specified disks on RHCSosds
  * install_Pbench   <-- installs pbench (all systems)

To run any of them invoke with:
  * 'ansible-playbook -i hosts.inv <playbook>'

These files must be edited for your environment
  * hosts.inv
  * group_vars
    * all
    * RHCSadmin.yml
    * RHCSclients.yml
    * RHCSgateways.yml
    * RHCSmons.yml
    * RHCSosds.yml
    * RHCSrgw.yml

DEPENDENCIES:
  * ansible   <-- which requires password-less SSH from ansible driver node to all systems
  * proper configuration settings in 'hosts.inv' and 'group_vars' files
  
