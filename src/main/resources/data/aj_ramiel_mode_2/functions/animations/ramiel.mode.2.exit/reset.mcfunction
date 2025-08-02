#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_2.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_2:animations/ramiel.mode.2.exit/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_2","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_2.animations.ramiel.mode.2.exit
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10842
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10846
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10850
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10854
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.base3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10858
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10862
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10866
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone15] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10870
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone16] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10874
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.base4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10878
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10882
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10886
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10890
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10894
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10898
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10902
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10906
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10910
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10914
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10918
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10922
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10926
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10930
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10934
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10938
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10942
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10946
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10950
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10954
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10958
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10962
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10966
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10970
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10974
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10978
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10982
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10986
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10990
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10994
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/10998
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11002
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11006
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11010
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11014
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11018
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11022
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11026
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11030
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11034
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11038
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.exit/__generated__/execute/11042