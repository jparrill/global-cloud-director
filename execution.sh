#!/bin/bash
function def() {
  BASE=/home/jparrill/RedHat_Consulting/Produban/repos/produban-puppet-modules
  KEY=/home/jparrill/.vagrant.d/insecure_private_key
  PLAYBOOK=${BASE}/ansible/first_phase.yml
  INVENTORY=${BASE}/ansible/inventory/hosts
}

function main() {
  def
  vagrant destroy -f && vagrant up --no-provision
  ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook --private-key=${KEY}  --user=vagrant --limit=vagrant --inventory-file=${INVENTORY} ${PLAYBOOK}
}

main
