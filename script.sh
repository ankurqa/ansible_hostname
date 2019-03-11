#/bin/bash
while IFS=, read -r ip m
do
	echo $ip
	echo $m
	ansible-playbook  -i $ip, hostname.yml   --extra-vars "m=$m  ansible_sudo_pass=qainfotech ansible_ssh_user=qainfotech ansible_ssh_pass=qainfotech"
done < ip
