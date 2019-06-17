configure kernel boot parameters:
  file.managed:
    - name: /etc/default/grub.d/HYPER-V.cfg
    - source: salt://hypervguest/files/HYPER-V.cfg
    - user: root
    - group: root
    - mode: 644

update grub configuration:
  cmd.run:
    - name: /usr/sbin/update-grub
    - onchanges:
      - file: /etc/default/grub.d/HYPER-V.cfg

install hyper-v guest vm tools:
  pkg.installed:
    - pkgs:
      - linux-image-virtual
      - linux-tools-virtual
      - linux-cloud-tools-virtual
