#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.109 ^-6.711 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.109 ^-6.737 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.109 ^-6.763 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.109 ^-6.79 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.109 ^-6.817 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.109 ^-6.843 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.109 ^-6.87 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.109 ^-6.897 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.109 ^-6.924 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}