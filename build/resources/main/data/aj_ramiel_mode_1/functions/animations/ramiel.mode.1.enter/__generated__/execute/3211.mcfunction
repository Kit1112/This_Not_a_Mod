#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.75f,15f,-180f]
execute if score #this.aj.anim aj.i matches 133 run tp @s ^-0.109 ^-7.164 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 134 run tp @s ^-0.109 ^-7.184 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 135 run tp @s ^-0.109 ^-7.202 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 136 run tp @s ^-0.109 ^-7.22 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 137 run tp @s ^-0.109 ^-7.236 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 138 run tp @s ^-0.109 ^-7.251 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 139 run tp @s ^-0.109 ^-7.264 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 140 run tp @s ^-0.109 ^-7.276 ^-0.408 ~ ~
execute if score #this.aj.anim aj.i matches 133 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone8,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:866}