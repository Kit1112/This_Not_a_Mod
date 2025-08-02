#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_1.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_1:animations/ramiel.mode.1.exit/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_1.animations.ramiel.mode.1.exit
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7666
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7670
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7674
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7678
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7682
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7686
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7690
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7694
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7698
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7702
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7706
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7710
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7714
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7718
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7722
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7726
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7730
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7734
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7738
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7742
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7746
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7750
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7754
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7758
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/ramiel.mode.1.exit/__generated__/execute/7762