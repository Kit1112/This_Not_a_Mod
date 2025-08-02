#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_statue.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_statue:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_statue","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/41
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/42
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone3,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/43
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/44
execute as @e[type=armor_stand,tag=aj.ramiel_statue.base,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/45
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone5,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/46
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone6,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/47
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone7,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/48
execute as @e[type=armor_stand,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/49
execute as @e[type=armor_stand,tag=aj.ramiel_statue.base2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:set_state/__generated__/execute/50