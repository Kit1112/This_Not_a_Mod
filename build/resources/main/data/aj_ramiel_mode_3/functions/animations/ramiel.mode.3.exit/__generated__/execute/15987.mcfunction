#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [140.768f,37.761f,63.435f]
execute if score #this.aj.anim aj.i matches 91..93 run tp @s ^-6.19 ^-1.918 ^3.574 ~ ~
execute if score #this.aj.anim aj.i matches 94 run tp @s ^-6.163 ^-1.918 ^3.558 ~ ~
execute if score #this.aj.anim aj.i matches 95 run tp @s ^-6.134 ^-1.918 ^3.541 ~ ~
execute if score #this.aj.anim aj.i matches 96 run tp @s ^-6.104 ^-1.918 ^3.524 ~ ~
execute if score #this.aj.anim aj.i matches 97 run tp @s ^-6.073 ^-1.918 ^3.506 ~ ~
execute if score #this.aj.anim aj.i matches 98 run tp @s ^-6.043 ^-1.918 ^3.489 ~ ~
execute if score #this.aj.anim aj.i matches 99 run tp @s ^-6.012 ^-1.918 ^3.471 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^-5.981 ^-1.918 ^3.453 ~ ~
execute if score #this.aj.anim aj.i matches 91 as @e[type=armor_stand,tag=aj.ramiel_mode_3.stem3,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2180}