#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_defeat.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_defeat:animations/ramiel.defeat/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_defeat","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_defeat.animations.ramiel.defeat
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/153
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/157
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/161
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/165
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/169
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/173
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/177
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/181
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/185
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/189
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/193
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/197
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/201
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/205
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/209
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/213
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/217
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/221
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/225
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/229
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/233
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/237
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/241
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/245
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike15] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/249
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.spike16] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/253
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/257
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/261
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/265
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/269
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/273
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/277
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/281
execute as @e[type=area_effect_cloud,tag=aj.ramiel_defeat.piece8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:animations/ramiel.defeat/__generated__/execute/285