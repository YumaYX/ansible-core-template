default:
	cat Makefile

ping:
	sudo ansible -i hosts all -m ping

roles:
	sudo ansible-playbook -i hosts site.yml

target:
	sudo ansible-playbook -i hosts site.yml -l two

check:
	sudo ansible-playbook -i hosts site.yml --syntax-check
	sudo ansible-playbook -i hosts site.yml --check --diff

install:
	sudo dnf -y install ansible-core

