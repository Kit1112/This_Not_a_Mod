#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-39.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-40.302f,57.838f,72.726f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-40.707f,58.566f,74.512f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.053f,59.264f,76.375f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.338f,59.929f,78.315f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.556f,60.548f,80.293f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-41.719f,61.155f,82.433f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^4.039 ^-2.556 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^4.15 ^-2.635 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^4.337 ^-2.795 ^0.757 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^4.398 ^-2.956 ^0.768 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^4.428 ^-3.117 ^0.782 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^4.461 ^-3.286 ^0.796 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^4.497 ^-3.462 ^0.811 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^4.534 ^-3.64 ^0.826 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^4.573 ^-3.832 ^0.842 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:298}