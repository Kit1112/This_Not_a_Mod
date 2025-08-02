#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,75f,-180f]
execute if score #this.aj.anim aj.i matches 106 run tp @s ^-0.562 ^2.638 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^-0.562 ^2.656 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 108 run tp @s ^-0.562 ^2.677 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 109 run tp @s ^-0.562 ^2.698 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 110 run tp @s ^-0.562 ^2.72 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 111 run tp @s ^-0.562 ^2.743 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 112 run tp @s ^-0.562 ^2.767 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 113 run tp @s ^-0.562 ^2.792 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.562 ^2.817 ^-0.151 ~ ~
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone4,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:371}