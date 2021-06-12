SSH
=========

Description
-------
This role is used to configure the ssh service.

Security notes
-------
It is very important to secure SSH connection of your servers.

It is therefore important to :
- Change the SSH listening port
- Disable login by root user
- Activate the pubkey connection and deactivate all others
- Limit users allowed to use sudo / doas

