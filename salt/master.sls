configure salt master:
  file.managed:
    - name: /etc/salt/master
    - source: salt://salt/files/master
    - user: root
    - group: root
    - mode: 644

restart salt-master service on configuration change:
  service.running:
    - name: salt-master
    - enable: True
    - onchanges:
      - file: /etc/salt/master
