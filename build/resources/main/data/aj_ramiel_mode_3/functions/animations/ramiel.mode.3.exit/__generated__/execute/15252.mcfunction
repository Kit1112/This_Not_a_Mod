#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.208f,20.705f,49.107f]
execute if score #this.aj.anim aj.i matches 91..93 run tp @s ^-3.574 ^-1.918 ^6.19 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-3.558 ^-1.918 ^6.163 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-3.541 ^-1.918 ^6.134 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-3.524 ^-1.918 ^6.104 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-3.506 ^-1.918 ^6.073 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-3.489 ^-1.918 ^6.043 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-3.471 ^-1.918 ^6.012 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-3.453 ^-1.918 ^5.981 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem2,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:1759}