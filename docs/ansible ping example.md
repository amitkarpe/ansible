Some text with a footnote.[^1]

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

![Screenshot for commandoutput](https://lh3.googleusercontent.com/hesVoEdbINtp3tCrCaZpVcs4hFPllgfQz9TexL6_VZMvTg4p5JuERD-BTzLdBVyDSRNdVt9PeVlHBjfg3Yr4y2tBETFVIZTJIvFJSSTMiUta7G0WyXcFtfZHu_ypBt52e3Qb-yDmnQGTMnl1uys4StdTxdwObacWBlHQZaSKLJX74Bgjo3V91XP7_JBXkiijPn4uEKLd53_1j_VGPyXG3lSXAGm5KH-EUym9V68_dccYiMB9e165dzPTe6cz6YjjR8V70FMCVd863SOZUcB3yC95bm-z5LxsfGWcsqCvezkjFanm8-mEgrFiCuH0StP4cz9h16pl_5ks0doZrw-beIQghpc7xOHJUWeeNWyXERaOHAM7NSbs-WRM5ZXX0Byam9LBvbmS1wpUDvT0m-nS7tHQFOEZ2r1nAzlM2oA0osE4hvMEAEMFABi60xPtnH1AqGCy2J4-LSUfZBgMCtS2RPPcdMXWXLupi_XE93kmg8Jkfkt-vec3mpIG829JB9itRbALs7Mxy-mXHeIhmlEDilf2sq1tNfXAu3Sv5fP1kTmahD6jcsuJy9jkiGW-XaHHUzRz9qd7V3KH6LQVCavBET64kfSbHs0bAPaj28hqZ9AOryVLBXzyFBUX00JEIJwCIljLk1dnQO7BibmRKDZLVzg6oBn5NMy8UA=w1875-h333-no "Results" =500x60)


More
![Output of command](https://lh3.googleusercontent.com/1WuYhO1XcQAcBkIV2qd3OfQ7qb7-besV8j6olACAMVcgtnSCanfFw-9nfFjZ8AdiyoMWp1wXDG8Z5g "output")

<!--stackedit_data:
eyJoaXN0b3J5IjpbMjEyOTgxNDcxMywyNjk2NjA3NjAsLTI1NT
A1MDcyNiwtMTk3NzI4Mzg5NiwtMTUxNTM3NDE2NywtNzc2ODc2
NDg1XX0=
-->