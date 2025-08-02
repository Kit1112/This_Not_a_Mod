#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_3.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_3:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_3","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/149
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/150
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/151
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/152
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.base,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/153
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/154
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/155
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/156
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/157
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.base2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/158
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/159
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/160
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/161
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/162
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/163
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/164
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/165
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/166
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/167
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/168
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/169
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem4,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/170
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/171
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/172
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/173
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/174
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/175
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/176
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/177
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/178
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem7,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/179
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/180
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/181
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/182
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/183
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/184
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem9,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/185
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/186
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/187
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/188
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/189
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/190
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem11,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/191
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/192
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.down12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/193
execute as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:set_state/__generated__/execute/194