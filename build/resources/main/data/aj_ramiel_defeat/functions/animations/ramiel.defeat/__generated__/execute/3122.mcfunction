#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [118.256f,-49.793f,-64.005f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [117.783f,-50.388f,-61.874f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [117.193f,-51.049f,-59.286f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [116.578f,-51.658f,-56.647f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.943f,-52.214f,-53.962f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [115.307f,-52.709f,-51.29f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.635f,-53.169f,-48.472f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^2.945 ^-3.014 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^3.056 ^-3.092 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^3.244 ^-3.252 ^-1.875 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^3.29 ^-3.41 ^-1.859 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^3.304 ^-3.564 ^-1.839 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^3.32 ^-3.723 ^-1.819 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^3.34 ^-3.886 ^-1.799 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^3.361 ^-4.049 ^-1.78 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^3.385 ^-4.222 ^-1.76 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:258}