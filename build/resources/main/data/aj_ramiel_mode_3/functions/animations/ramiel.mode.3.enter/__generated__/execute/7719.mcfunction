#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,-15f,180f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-1.271 ^-1.918 ^-2.201 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-1.406 ^-1.918 ^-2.435 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-1.535 ^-1.918 ^-2.659 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-1.667 ^-1.918 ^-2.888 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-1.773 ^-1.918 ^-3.071 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-1.908 ^-1.918 ^-3.305 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-2.043 ^-1.918 ^-3.539 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-2.17 ^-1.918 ^-3.759 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-2.206 ^-1.918 ^-3.821 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-2.224 ^-1.918 ^-3.852 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-2.241 ^-1.918 ^-3.882 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3259}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3260}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3261}