#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.613f,-8.429f,102.841f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.753f,-7.776f,101.053f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.885f,-7.028f,98.905f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [171.981f,-6.315f,96.735f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [172.043f,-5.637f,94.543f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [172.073f,-5.01f,92.373f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [172.073f,-4.397f,90.091f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-5.84 ^-1.216 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-5.95 ^-1.294 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-6.138 ^-1.454 ^-2.684 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-6.239 ^-1.713 ^-2.688 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^-6.313 ^-1.988 ^-2.69 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^-6.387 ^-2.273 ^-2.689 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^-6.459 ^-2.564 ^-2.685 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^-6.528 ^-2.856 ^-2.679 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^-6.598 ^-3.166 ^-2.671 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:655}