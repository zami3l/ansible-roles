Wireguard
=========

Compatibilité
--------------
- OpenBSD


Description
------------
Permet de créer un serveur / client wireguard.

Exemple
------------

- Serveur
```yaml

- name: Playbook
  hosts:
    - openbsd

  roles:
    - role: wireguard
      vars:
        - INTERFACE_WIREGUARD: wg5
        - NAME_WIREGUARD: intersite
        - PORT_WIREGUARD: 51580
        - RDOMAIN_WIREGUARD: 3
        - TYPE_WIREGUARD: server
        - SRV_WIREGUARD:
            ip: 10.0.0.1
        - CLI_WIREGUARD:
            - { ip: 10.0.0.2, comment: 'Client 1', pubkey: BBBB }
            - { ip: 10.0.0.3, comment: 'Client 2', pubkey: CCCC }
```

- Client
```yaml

- name: Playbook
  hosts:
    - openbsd

  roles:
    - role: wireguard
      vars:
        - INTERFACE_WIREGUARD: wg6
        - NAME_WIREGUARD: intersite
        - PORT_WIREGUARD: 51581
        - TYPE_WIREGUARD: client
        - SRV_WIREGUARD:
            ip: 90.90.90.90
            pubkey: AAAA
        - CLI_WIREGUARD:
            ip: 10.0.0.2
```
