- Shell scripts: Imperative (action only)
- Ansible: Declarative (action, but checks state)
- Nix: Declarative, but manages state, not just perform predefined actions.

# Types of system management
- Divergent: The system deviates from the configuration management
- Convergent: The system is brought closer to the configuration management (Ansible, Puppet, Chef, CFEngine)
- Congruent: The system is forced to be in the same state as the configuration management (Nix)

Source: https://flyingcircus.io/blog/thoughts-on-systems-management-methods/

# Related
- Vagrant: VM Manager, usually on top of Virtualbox, but can be used with other VMs
- chezomoi: Dotfiles manager
- GNU Stow: Symlink farm manager, also used as a dotfile manager
- git bare repos: Used to store dotfiles, but the setup is a bit clunky, although easy. Doesn't handle multiple profiles.
