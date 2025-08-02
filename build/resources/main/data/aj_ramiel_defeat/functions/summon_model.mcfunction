#built using mc-build (https://github.com/mc-build/mc-build)

summon armor_stand ~ ~ ~ {Tags:['aj.ramiel_defeat','aj.ramiel_defeat.root_entity','new',"RAMIEL","defeat"],NoGravity:1b,Invisible:1b,Marker:1b,DisabledSlots:4144959,CustomName:'["",{"text":"model.","color":"gray"},{"text":"ramiel_defeat","color":"blue"},{"text":".root_entity","color":"gray"}]'}
execute rotated ~ 0 run function aj_ramiel_defeat:__generated__/execute/0
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.root_entity,tag=new] run function aj_ramiel_defeat:__generated__/execute/1