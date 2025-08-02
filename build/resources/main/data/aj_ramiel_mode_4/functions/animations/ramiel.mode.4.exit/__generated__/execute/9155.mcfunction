#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-75f,27.5f,-167.5f]
execute if score #this.aj.anim aj.i matches 88 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-78.415f,30.997f,-167.907f]
execute if score #this.aj.anim aj.i matches 89 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-83.616f,36.321f,-168.526f]
execute if score #this.aj.anim aj.i matches 90 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-89.873f,42.727f,-169.271f]
execute if score #this.aj.anim aj.i matches 84 run tp @s ^-2.746 ^-3.768 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 85 run tp @s ^-2.734 ^-3.756 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 86 run tp @s ^-2.722 ^-3.744 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 87 run tp @s ^-2.71 ^-3.732 ^-3.921 ~ ~
execute if score #this.aj.anim aj.i matches 88 run tp @s ^-2.748 ^-3.645 ^-3.898 ~ ~
execute if score #this.aj.anim aj.i matches 89 run tp @s ^-2.816 ^-3.504 ^-3.838 ~ ~
execute if score #this.aj.anim aj.i matches 90 run tp @s ^-2.898 ^-3.32 ^-3.722 ~ ~
execute if score #this.aj.anim aj.i matches 84 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:743}
execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.ramiel_mode_4.inner2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:657}