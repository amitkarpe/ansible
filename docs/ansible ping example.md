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


![Screenshot for commandoutput](https://drive.google.com/open?id=1JinausVN8TuuGH2lMzsBBZ4MMKGFwl3g)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTI1NTA1MDcyNiwtMTk3NzI4Mzg5NiwtMT
UxNTM3NDE2NywtNzc2ODc2NDg1XX0=
-->