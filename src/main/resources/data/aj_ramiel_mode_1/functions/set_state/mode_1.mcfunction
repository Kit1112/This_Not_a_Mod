#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_1.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_1:animations/%animation_name/set_state/mode_1","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.mode_1
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/86
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/87
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/88
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/89
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/90
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/91
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/92
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/93
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/94
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/95
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/96
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.emitter,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/97
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/98
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/99
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/100
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/101
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/102
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/103
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/104
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/105
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/106
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/107
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/108
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/109
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/110