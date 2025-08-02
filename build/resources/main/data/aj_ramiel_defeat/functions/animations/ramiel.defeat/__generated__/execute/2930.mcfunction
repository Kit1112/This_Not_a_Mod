#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.77f,9.692f,-125.649f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^2.273 ^0.465 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^2.505 ^0.465 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^2.692 ^0.465 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^2.769 ^0.48 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^2.789 ^0.53 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^2.783 ^0.596 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^2.768 ^0.667 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^2.759 ^0.725 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^2.774 ^0.753 ^-2.461 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:240}