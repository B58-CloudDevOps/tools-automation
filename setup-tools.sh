ansible-playbook -i ${tool_name}.expense.internal, -e ansible_user=ec2-user -e ansible_password=${ssh_pwd} -e tool_name=${tool_name}  setup-tools.yml
