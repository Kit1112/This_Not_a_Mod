#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.521f,19.843f,-166.61f]
execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.61f,19.934f,-166.62f]
execute if score #this.aj.anim aj.i matches 71 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.709f,20.036f,-166.632f]
execute if score #this.aj.anim aj.i matches 72 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.818f,20.147f,-166.645f]
execute if score #this.aj.anim aj.i matches 73 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.933f,20.265f,-166.659f]
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.062f,20.397f,-166.674f]
execute if score #this.aj.anim aj.i matches 75 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.197f,20.535f,-166.69f]
execute if score #this.aj.anim aj.i matches 69 run tp @s ^-3.802 ^-4.83 ^-5.618 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^-3.803 ^-4.823 ^-5.616 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^-3.803 ^-4.816 ^-5.614 ~ ~
execute if score #this.aj.anim aj.i matches 72 run tp @s ^-3.804 ^-4.808 ^-5.613 ~ ~
execute if score #this.aj.anim aj.i matches 73 run tp @s ^-3.805 ^-4.8 ^-5.611 ~ ~
execute if score #this.aj.anim aj.i matches 74 run tp @s ^-3.806 ^-4.79 ^-5.609 ~ ~
execute if score #this.aj.anim aj.i matches 75 run tp @s ^-3.807 ^-4.78 ^-5.606 ~ ~
execute if score #this.aj.anim aj.i matches 69 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:780}
execute if score #this.aj.anim aj.i matches 74 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:777}