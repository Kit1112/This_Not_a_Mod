#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [113.973f,-53.566f,-45.68f]
execute if score #this.aj.anim aj.i matches 82 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [113.303f,-53.917f,-42.809f]
execute if score #this.aj.anim aj.i matches 83 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.67f,-54.203f,-40.036f]
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [112.041f,-54.445f,-37.198f]
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [111.45f,-54.633f,-34.415f]
execute if score #this.aj.anim aj.i matches 86 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [110.867f,-54.78f,-31.525f]
execute if score #this.aj.anim aj.i matches 87 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [110.346f,-54.876f,-28.761f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [109.85f,-54.93f,-25.904f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [109.399f,-54.94f,-23.019f]
execute if score #this.aj.anim aj.i matches 81 run tp @s ^3.411 ^-4.394 ^-1.741 ~ ~
execute if score #this.aj.anim aj.i matches 82 run tp @s ^3.439 ^-4.57 ^-1.722 ~ ~
execute if score #this.aj.anim aj.i matches 83 run tp @s ^3.466 ^-4.741 ^-1.704 ~ ~
execute if score #this.aj.anim aj.i matches 84 run tp @s ^3.496 ^-4.915 ^-1.688 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^3.525 ^-5.086 ^-1.672 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^3.556 ^-5.262 ^-1.657 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^3.586 ^-5.43 ^-1.644 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^3.617 ^-5.602 ^-1.631 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^3.649 ^-5.774 ^-1.62 ~ ~
execute if score #this.aj.anim aj.i matches 81 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:258}