#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_2.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_2:animations/%animation_name/set_state/mode_2","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_2","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.mode_2
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/164
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/165
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/166
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/167
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.base3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/168
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone13,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/169
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone14,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/170
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone15,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/171
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.bone16,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/172
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.base4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/173
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.emitter,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/174
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/175
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.core,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/176
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.core2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/177
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.core3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/178
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.core4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/179
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/180
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/181
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/182
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/183
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.cubecenter6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/184
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/185
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/186
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/187
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/188
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/189
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/190
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/191
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/192
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/193
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/194
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/195
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/196
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/197
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner7,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/198
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/199
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner8,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/200
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/201
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner9,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/202
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/203
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner10,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/204
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/205
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner11,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/206
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.outer12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/207
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.inner12,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/208
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/209
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip2,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/210
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip3,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/211
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip4,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/212
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip5,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/213
execute as @e[type=armor_stand,tag=aj.ramiel_mode_2.tip6,distance=..16.57] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:set_state/__generated__/execute/214