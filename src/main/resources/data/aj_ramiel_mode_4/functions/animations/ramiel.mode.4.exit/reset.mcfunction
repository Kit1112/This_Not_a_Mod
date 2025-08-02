#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_4.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_4:animations/ramiel.mode.4.exit/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_4","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_4.animations.ramiel.mode.4.exit
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6120
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6124
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6128
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6132
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6136
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6140
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6144
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6148
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6152
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6156
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6160
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6164
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6168
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.innerspike] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6172
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.upmost] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6176
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.first] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6180
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.second] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6184
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6188
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6192
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6196
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6200
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6204
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6208
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6212