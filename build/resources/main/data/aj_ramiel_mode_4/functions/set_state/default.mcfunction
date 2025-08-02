#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_4.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_4:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_4","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/83
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/84
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/85
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/86
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/87
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/88
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/89
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone7,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/90
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/91
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.base2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/92
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/93
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/94
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/95
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/96
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/97
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/98
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/99
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/100
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/101
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/102
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/103
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/104
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/105
execute as @e[type=armor_stand,tag=aj.ramiel_mode_4.emitter,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:set_state/__generated__/execute/106