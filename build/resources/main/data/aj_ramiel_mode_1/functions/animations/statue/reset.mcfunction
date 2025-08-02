#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_1.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_1:animations/statue/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_1","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_1.animations.statue
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13625
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13629
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13633
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13637
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13641
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13645
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13649
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13653
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13657
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13661
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13665
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13669
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13673
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13677
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13681
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13685
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13689
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13693
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13697
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13701
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13705
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13709
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13713
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13717
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13721
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube15] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13725