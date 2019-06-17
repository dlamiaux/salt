base:
  '*':
    - common
  'G@virtual:VirtualPC and G@os:ubuntu':
    - hypervguest.ubuntu
  'G@roles:salt-master':
    - salt.master
