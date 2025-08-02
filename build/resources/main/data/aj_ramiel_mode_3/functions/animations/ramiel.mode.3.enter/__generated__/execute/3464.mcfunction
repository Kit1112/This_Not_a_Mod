#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.898f,46.529f,178.503f]
execute if score #this.aj.anim aj.i matches 115 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.858f,46.476f,178.558f]
execute if score #this.aj.anim aj.i matches 116 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.821f,46.424f,178.611f]
execute if score #this.aj.anim aj.i matches 117 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.782f,46.372f,178.665f]
execute if score #this.aj.anim aj.i matches 118 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.744f,46.321f,178.717f]
execute if score #this.aj.anim aj.i matches 119 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.706f,46.269f,178.77f]
execute if score #this.aj.anim aj.i matches 120 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.669f,46.22f,178.82f]
execute if score #this.aj.anim aj.i matches 121 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.631f,46.168f,178.872f]
execute if score #this.aj.anim aj.i matches 122 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.594f,46.119f,178.922f]
execute if score #this.aj.anim aj.i matches 123 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-145.558f,46.07f,178.971f]
execute if score #this.aj.anim aj.i matches 114 run tp @s ^-0.199 ^-2.417 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 115 run tp @s ^-0.199 ^-2.419 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 116 run tp @s ^-0.199 ^-2.422 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 117 run tp @s ^-0.199 ^-2.424 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 118 run tp @s ^-0.199 ^-2.427 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 119 run tp @s ^-0.199 ^-2.43 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 120 run tp @s ^-0.199 ^-2.432 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 121 run tp @s ^-0.199 ^-2.435 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 122 run tp @s ^-0.199 ^-2.437 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 123 run tp @s ^-0.199 ^-2.44 ^-0.199 ~ ~
execute if score #this.aj.anim aj.i matches 114 as @e[type=armor_stand,tag=aj.ramiel_mode_3.bone8,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:800}