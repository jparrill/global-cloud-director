## Scoping Automation Project
#### Repository
  - https://github.com/padajuan/global-cloud-director
#### Finally
Deploy a new infrastructure of OSP with Jenkins + Ansible + Puppet and manage it with Puppet
#### Alternatives:
    - Staypuff
    - Spinal Stack
    - RDO Manager (on going)
#### Estimated Time: ~ 6 Months+

### Steps
01-hapx
  - Install deps
  - Pacemaker
  - HAProxy
  - sysctl
  - pacemaker
  - Cert SSL

02-osdb
  - Install Deps
  - LVM
  - Pacemaker
  - Mysql:
    - Creation
    - Manage
    - Nuage Permissions
  - Rabbit (Problem, Cluster sync required)
    - Install
    - Cluster Sync
  - MongoDB

03-oscon
  - AZ1
    - Install Deps
    - Pacemaker
    - Memcache
    - Crontab
    - Keystone
      - Pacemaker
      - SSL
      - LDAP -> NO!!
      - Keystone-Exec (fixtures)
    - Glance
      - Pacemaker
      - SyncDB (fixtures)
    - Cinder
      - Pacemaker
      - Templates
    - Nova
      - Pacemaker
      - Templates
      - SyncDB
      - Nova Aggregate (Fixtures)
    - Neutron
      - Pacemaker
      - Templates
      - Nuage
        - Template config file with puppet (/etc/neutron/plugin/nuage/nuageplugin.ini)
