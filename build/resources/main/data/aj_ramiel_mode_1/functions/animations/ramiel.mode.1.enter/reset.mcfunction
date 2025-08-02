#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_1.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_1:animations/ramiel.mode.1.enter/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_1.animations.ramiel.mode.1.enter
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/118
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/122
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/126
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/130
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/134
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/138
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/142
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/146
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/150
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/154
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/158
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/162
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/166
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/170
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/174
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/178
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/182
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/186
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/190
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/194
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/198
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/202
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/206
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/210
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.enter/__generated__/execute/214