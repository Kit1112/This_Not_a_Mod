#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_4.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_4:animations/ramiel.mode.4.idle/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_4","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_4.animations.ramiel.mode.4.idle
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10141
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10145
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10149
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10153
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10157
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10161
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10165
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10169
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10173
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10177
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10181
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10185
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10189
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.innerspike] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10193
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.upmost] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10197
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.first] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10201
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.second] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10205
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10209
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10213
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10217
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10221
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10225
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10229
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10233