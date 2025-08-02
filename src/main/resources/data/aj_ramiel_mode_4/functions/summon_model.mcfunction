#built using mc-build (https://github.com/mc-build/mc-build)

summon armor_stand ~ ~ ~ {Tags:['aj.ramiel_mode_4','aj.ramiel_mode_4.root_entity','new',"RAMIEL","mode4"],NoGravity:1b,Invisible:1b,Marker:1b,DisabledSlots:4144959,CustomName:'["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_4","color":"blue"},{"text":".root_entity","color":"gray"}]'}
execute rotated ~ 0 run function aj_ramiel_mode_4:__generated__/execute/0
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.root_entity,tag=new] run function aj_ramiel_mode_4:__generated__/execute/1