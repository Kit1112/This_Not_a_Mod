#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,15f,180f]
execute if score #this.aj.anim aj.i matches 42 run tp @s ^-2.201 ^-1.918 ^-1.271 ~ ~
execute if score #this.aj.anim aj.i matches 43 run tp @s ^-2.435 ^-1.918 ^-1.406 ~ ~
execute if score #this.aj.anim aj.i matches 44 run tp @s ^-2.659 ^-1.918 ^-1.535 ~ ~
execute if score #this.aj.anim aj.i matches 45 run tp @s ^-2.888 ^-1.918 ^-1.667 ~ ~
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-3.071 ^-1.918 ^-1.773 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-3.305 ^-1.918 ^-1.908 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-3.539 ^-1.918 ^-2.043 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-3.759 ^-1.918 ^-2.17 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-3.821 ^-1.918 ^-2.206 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-3.852 ^-1.918 ^-2.224 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-3.882 ^-1.918 ^-2.241 ~ ~
execute if score #this.aj.anim aj.i matches 42 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2838}
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2839}
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_3.down5,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:2840}