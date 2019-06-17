configure salt minion:
  file.managed:
    - name: /etc/salt/minion
    - source: salt://salt/files/minion
    - user: root
    - group: root
    - mode: 644

restart salt-master service on configuration change:
  service.running:
    - name: salt-minion
    - enable: True
    - onchanges:
      - file: /etc/salt/minion
