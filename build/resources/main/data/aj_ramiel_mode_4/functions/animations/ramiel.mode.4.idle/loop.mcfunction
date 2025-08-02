#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10237
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10243
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10249
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10255
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10261
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10267
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10273
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone7,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10279
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10285
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10291
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10297
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10303
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10309
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10315
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10331
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10347
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10363
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10379
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10385
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10391
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10397
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10403
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10409
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.emitter,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.idle/__generated__/execute/10415
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 11.. run scoreboard players set @s aj.i 0