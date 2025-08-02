#built using mc-build (https://github.com/mc-build/mc-build)

summon armor_stand ~ ~ ~ {Tags:['aj.ramiel_mode_1','aj.ramiel_mode_1.root_entity','new',"RAMIEL","mode_1"],NoGravity:1b,Invisible:1b,Marker:0b,DisabledSlots:4144959,CustomName:'["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]'}
execute rotated ~ 0 run function aj_ramiel_mode_1:summon_model/__generated__/execute/81
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.root_entity,tag=new] run function aj_ramiel_mode_1:summon_model/__generated__/execute/82
tag @s remove new