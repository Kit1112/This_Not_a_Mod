#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_3.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_3:animations/ramiel.mode.3.idle/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_3","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_3.animations.ramiel.mode.3.idle
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22715
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22719
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22723
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22727
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22731
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22735
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22739
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22743
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22747
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22751
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22755
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22759
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22763
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22767
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22771
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22775
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22779
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22783
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22787
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22791
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22795
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22799
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22803
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22807
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22811
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22815
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22819
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22823
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22827
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22831
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22835
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22839
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22843
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22847
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22851
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22855
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22859
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22863
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22867
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22871
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22875
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22879
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22883
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22887
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22891
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.idle/__generated__/execute/22895