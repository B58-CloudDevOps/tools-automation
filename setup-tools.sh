# ansible-playbook -i ${tool_name}.expense.internal, -e ansible_user=ec2-user -e ansible_password=${ssh_pwd} -e tool_name=${tool_name}  setup-tools.yml

git pull
ansible-playbook -i ${2}.roboshop.internal, -e ansible_user=ec2-user -e ansible_password=${1} -e tool_name=${2} -e vault_token=${3} setup-tools.yml
