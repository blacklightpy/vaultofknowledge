Ansible is a configuration manager.

It lets you manage anything from dotfiles to system packages.

NixOS does the same thing, but NixOS not only sets up the system, but a change in the config file will also reflect in the state of the system, unlike Ansible which only does the initial setup.

Ansible has YAML playbooks, and a .cfg config file.


- Control Node: A system where ansible is installed
- Inventory: Configurations for a system
- Managed Node: A system which is controlled by Ansible

- Inventories (INI/YAML) - specifies the hosts
- Playbooks (YAML) - specifies the jobs (plays) and tasks.
- Modules
- Plugins
- Collections (Contains playbooks, modules, plugins and roles. Can be installed from Ansible Galaxy)

Also Nix only works on Linux/macOS, not on Windows.
