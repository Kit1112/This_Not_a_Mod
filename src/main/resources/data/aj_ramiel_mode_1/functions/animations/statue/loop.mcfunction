#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13729
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13740
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13751
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13762
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13773
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13784
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13795
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13806
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13817
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.base2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13828
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13839
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.emitter,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13850
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13855
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube3,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13866
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13877
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube5,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13888
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13899
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube7,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13910
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13921
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube9,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13932
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube10,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13943
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube11,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13954
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube12,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13965
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube13,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13976
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube14,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13987
execute as @e[type=area_effect_cloud,tag=aj.ramiel_mode_1.innercube15,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_mode_1:animations/statue/__generated__/execute/13998
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 3.. run scoreboard players set @s aj.i 0