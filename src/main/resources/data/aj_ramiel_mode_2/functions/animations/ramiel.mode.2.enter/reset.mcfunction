#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_mode_2.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_mode_2:animations/ramiel.mode.2.enter/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_mode_2","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.ramiel_mode_2.animations.ramiel.mode.2.enter
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/222
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/226
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/230
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/234
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.base3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/238
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone13] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/242
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone14] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/246
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone15] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/250
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.bone16] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/254
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.base4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/258
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.emitter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/262
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/266
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/270
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/274
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/278
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.core4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/282
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/286
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/290
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/294
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/298
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.cubecenter6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/302
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/306
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/310
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/314
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/318
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/322
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/326
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/330
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/334
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/338
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/342
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/346
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/350
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/354
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner7] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/358
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/362
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner8] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/366
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/370
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner9] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/374
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/378
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner10] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/382
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/386
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner11] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/390
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.outer12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/394
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.inner12] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/398
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/402
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip2] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/406
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip3] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/410
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip4] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/414
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip5] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/418
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_2.tip6] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_2:animations/ramiel.mode.2.enter/__generated__/execute/422