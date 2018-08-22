### Playbok file @ ping.yaml


    ---
    - hosts: master4
      remote_user: sevone
      gather_facts: False
      tasks:
        - name: test connection
          ping:
          remote_user: sevone


#### Command 
##### Syntax

    ansible-playbook -i <inventory filename> -u <username> ping.yaml

### Output

    [root@master sdi]# ansible-playbook -i master4 -u sevone ping.yaml
    
    PLAY [master4] ***************************************************************************************************************************************************************************************************************************
    
    TASK [Gathering Facts] *******************************************************************************************************************************************************************************************************************
    ok: [master4]
    
    TASK [test connection] *******************************************************************************************************************************************************************************************************************
    ok: [master4]
    
    PLAY RECAP *******************************************************************************************************************************************************************************************************************************
    master4                    : ok=2    changed=0    unreachable=0    failed=0
    
    [root@master sdi]#



More
![Output of command](https://lh3.googleusercontent.com/1WuYhO1XcQAcBkIV2qd3OfQ7qb7-besV8j6olACAMVcgtnSCanfFw-9nfFjZ8AdiyoMWp1wXDG8Z5g "output")

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTg0Mjk2Mzg1NSwtMTQ1MzMzNjI2NSwyNj
k2NjA3NjAsLTI1NTA1MDcyNiwtMTk3NzI4Mzg5NiwtMTUxNTM3
NDE2NywtNzc2ODc2NDg1XX0=
-->