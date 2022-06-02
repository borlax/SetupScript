# SetupScript

Used for initial setup of a new VM or BM on Vultr. Using cloud-init their deployment system will automatically add my ssh key to the Root user.

This script will:
-Creates my user and home directory
-Recursively copy over and adjust ownership of the .ssh directory and its files
-Harden the ssh configuration and restart sshd

To be added:

-Firewall configurations
