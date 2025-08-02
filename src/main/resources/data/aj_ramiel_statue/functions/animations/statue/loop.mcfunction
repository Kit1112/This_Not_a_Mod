#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/97
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/113
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone3,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/127
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone4,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/142
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.base,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/161
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone5,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/174
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone6,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/188
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone7,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/202
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.bone8,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/216
execute as @e[type=area_effect_cloud,tag=aj.ramiel_statue.base2,distance=..10.09] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_statue:animations/statue/__generated__/execute/230
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 13.. run scoreboard players set @s aj.i 0