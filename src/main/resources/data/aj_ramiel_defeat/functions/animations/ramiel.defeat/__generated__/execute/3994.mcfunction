#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [167.5f,2.5f,90f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-2.793 ^-3.258 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-3.025 ^-3.258 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-3.213 ^-3.258 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-3.289 ^-3.242 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-3.309 ^-3.193 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-3.304 ^-3.126 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.288 ^-3.055 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.28 ^-2.997 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.294 ^-2.969 ^-2.919 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:516}