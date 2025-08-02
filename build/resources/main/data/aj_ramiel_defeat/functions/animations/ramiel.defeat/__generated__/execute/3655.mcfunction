#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.302f,57.838f,72.726f]
execute if score #this.aj.anim aj.i matches 76 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.707f,58.566f,74.512f]
execute if score #this.aj.anim aj.i matches 77 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.053f,59.264f,76.375f]
execute if score #this.aj.anim aj.i matches 78 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.338f,59.929f,78.315f]
execute if score #this.aj.anim aj.i matches 79 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.556f,60.548f,80.293f]
execute if score #this.aj.anim aj.i matches 80 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-146.719f,61.155f,82.433f]
execute if score #this.aj.anim aj.i matches 72 run tp @s ^1.851 ^-5.725 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^1.962 ^-5.803 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^2.15 ^-5.963 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^2.113 ^-6.088 ^-2.006 ~ ~
execute if score #this.aj.anim aj.i matches 76 run tp @s ^2.028 ^-6.198 ^-1.951 ~ ~
execute if score #this.aj.anim aj.i matches 77 run tp @s ^1.946 ^-6.308 ^-1.898 ~ ~
execute if score #this.aj.anim aj.i matches 78 run tp @s ^1.868 ^-6.418 ^-1.848 ~ ~
execute if score #this.aj.anim aj.i matches 79 run tp @s ^1.795 ^-6.524 ^-1.802 ~ ~
execute if score #this.aj.anim aj.i matches 80 run tp @s ^1.722 ^-6.633 ^-1.756 ~ ~
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:318}