### Playbok file @ 
    ---
    - hosts: master4
      remote_user: sevone
      gather_facts: False
      tasks:
        - name: test connection
          ping:
          remote_user: sevone

### Output
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDIxNTc4MDg4XX0=
-->