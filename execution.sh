#!/bin/bash
function def() {
  BASE=/home/jparrill/RedHat_Consulting/Produban/repos/produban-puppet-modules
  KEY=/home/jparrill/.vagrant.d/insecure_private_key
  PLAYBOOK=${BASE}/ansible/first_phase.yml
  INVENTORY=${BASE}/ansible/inventory/hosts
}

function ansible() {
  ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook --private-key=${KEY}  --user=vagrant --limit=vagrant --inventory-file=${INVENTORY} ${PLAYBOOK}
}


function main() {
  def
  if [[ -z "$(vagrant status | grep not)" ]];then
  {
    echo "VM's running...executing provision"
    ansible
  }
  else
  {
    echo "VM's not running...waking up"
    vagrant destroy -f && vagrant up --no-provision
    ansible
  }
  fi
}

main
