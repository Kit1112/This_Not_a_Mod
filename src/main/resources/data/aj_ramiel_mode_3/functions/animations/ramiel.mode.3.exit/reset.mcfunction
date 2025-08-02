#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_3.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_3:animations/ramiel.mode.3.exit/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_3","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_3.animations.ramiel.mode.3.exit
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12536
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12540
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12544
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12548
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12552
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12556
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12560
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12564
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.bone8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12568
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.base2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12572
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12576
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12580
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12584
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12588
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12592
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12596
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12600
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12604
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12608
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12612
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12616
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12620
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12624
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12628
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12632
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12636
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12640
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12644
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12648
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12652
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12656
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12660
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12664
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12668
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12672
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12676
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12680
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12684
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12688
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12692
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12696
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12700
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12704
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.up12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12708
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.down12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12712
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_3.stem12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_3:animations/ramiel.mode.3.exit/__generated__/execute/12716