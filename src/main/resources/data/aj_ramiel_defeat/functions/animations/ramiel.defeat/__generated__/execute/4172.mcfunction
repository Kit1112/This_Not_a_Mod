#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [114.037f,13.836f,122.368f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^-5.061 ^-0.608 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^-5.293 ^-0.608 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^-5.481 ^-0.608 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^-5.557 ^-0.593 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^-5.577 ^-0.543 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^-5.572 ^-0.477 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-5.556 ^-0.406 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-5.548 ^-0.348 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-5.562 ^-0.32 ^-0.449 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:537}