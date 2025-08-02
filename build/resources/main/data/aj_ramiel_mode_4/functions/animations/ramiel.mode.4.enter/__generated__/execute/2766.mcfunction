#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.369f,29.723f,-36.35f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.509f,29.684f,-36.441f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.639f,29.649f,-36.524f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.765f,29.615f,-36.606f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.867f,29.587f,-36.671f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-56.966f,29.561f,-36.735f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.056f,29.536f,-36.793f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-57.135f,29.515f,-36.844f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-0.013 ^2.886 ^-4.775 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-0.014 ^2.902 ^-4.797 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-0.015 ^2.918 ^-4.817 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-0.016 ^2.933 ^-4.837 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-0.017 ^2.945 ^-4.853 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-0.017 ^2.957 ^-4.869 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-0.018 ^2.967 ^-4.883 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-0.019 ^2.977 ^-4.896 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:515}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:518}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:523}