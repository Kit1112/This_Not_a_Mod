#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-5.285 ^-1.488 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-5.517 ^-1.488 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-5.704 ^-1.488 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-5.781 ^-1.472 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-5.801 ^-1.423 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-5.795 ^-1.356 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-5.78 ^-1.285 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-5.771 ^-1.228 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-5.786 ^-1.199 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:655}