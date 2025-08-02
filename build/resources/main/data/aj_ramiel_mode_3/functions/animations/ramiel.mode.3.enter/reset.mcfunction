#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_3.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_3:animations/ramiel.mode.3.enter/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_3","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_3.animations.ramiel.mode.3.enter
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/203
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/207
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/211
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/215
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/219
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/223
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/227
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/231
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/235
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/239
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/243
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/247
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/251
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/255
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/259
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/263
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/267
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/271
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/275
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/279
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/283
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/287
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/291
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/295
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/299
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/303
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/307
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/311
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/315
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/319
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/323
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/327
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/331
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/335
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/339
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/343
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/347
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/351
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/355
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/359
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/363
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/367
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/371
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/375
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/379
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.enter/__generated__/execute/383