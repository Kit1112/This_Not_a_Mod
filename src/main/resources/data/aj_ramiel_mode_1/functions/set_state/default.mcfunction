#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_1.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_1:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s remove aj.state.mode_1
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/171
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/172
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/173
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/174
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/175
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/176
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/177
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/178
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/179
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/180
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/181
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.emitter,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/182
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/183
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/184
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/185
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/186
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/187
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/188
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/189
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/190
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/191
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/192
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/193
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/194
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/195
execute as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube15,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:set_state/__generated__/execute/196