#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/211
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/429
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/647
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/865
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/1083
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/1291
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/1509
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone7,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/1727
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/1945
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/2163
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/2371
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/2658
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/2954
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/3243
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/3520
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/3798
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/4052
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/4305
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/4592
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/4889
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/5178
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/5465
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/5761
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.emitter,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.enter/__generated__/execute/6050
scoreboard players add @s aj.i 1
execute if score #this.aj.anim aj.i matches 121.. run tag @s remove aj.ramiel_mode_4.animations.ramiel.mode.4.enter