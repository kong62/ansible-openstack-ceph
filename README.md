# ansible-openstack-ceph

# 1. Clone Project
git clone https://github.com/kong62/ansible-openstack-ceph

# 2. Set Ansible Inventory
vim inventory/all.yml

# 3. Set Ansible Vars
vim group_vars/all.yml

# 4. Deploy
ansible-playbook -i inventory/all.yml site.yml
