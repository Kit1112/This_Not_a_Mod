#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6216
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6345
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6474
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone4,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6603
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6732
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone5,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6851
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone6,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/6980
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone7,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7109
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.bone8,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7238
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.base2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7367
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7486
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7654
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7823
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.innerspike,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/7994
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.upmost,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/8267
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.first,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/8539
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.second,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/8793
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9047
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9217
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer2,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9385
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.inner3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9555
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.mid3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9728
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.outer3,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/9897
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_4.emitter,distance=..21] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_4:animations/ramiel.mode.4.exit/__generated__/execute/10071
scoreboard players add @s aj.i 1
execute if score #this.aj.anim aj.i matches 121.. run tag @s remove aj.ramiel_mode_4.animations.ramiel.mode.4.exit