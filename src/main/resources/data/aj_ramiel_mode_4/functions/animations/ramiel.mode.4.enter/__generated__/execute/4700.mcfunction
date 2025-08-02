#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.37f,21.736f,-166.83f]
execute if score #this.aj.anim aj.i matches 47 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-69.094f,21.453f,-166.797f]
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.839f,21.193f,-166.767f]
execute if score #this.aj.anim aj.i matches 49 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.592f,20.939f,-166.737f]
execute if score #this.aj.anim aj.i matches 50 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.391f,20.734f,-166.713f]
execute if score #this.aj.anim aj.i matches 51 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.197f,20.535f,-166.69f]
execute if score #this.aj.anim aj.i matches 52 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-68.022f,20.356f,-166.669f]
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-67.865f,20.196f,-166.651f]
execute if score #this.aj.anim aj.i matches 46 run tp @s ^-3.735 ^-4.601 ^-5.607 ~ ~
execute if score #this.aj.anim aj.i matches 47 run tp @s ^-3.741 ^-4.631 ^-5.61 ~ ~
execute if score #this.aj.anim aj.i matches 48 run tp @s ^-3.746 ^-4.658 ^-5.613 ~ ~
execute if score #this.aj.anim aj.i matches 49 run tp @s ^-3.752 ^-4.685 ^-5.616 ~ ~
execute if score #this.aj.anim aj.i matches 50 run tp @s ^-3.757 ^-4.707 ^-5.618 ~ ~
execute if score #this.aj.anim aj.i matches 51 run tp @s ^-3.762 ^-4.728 ^-5.62 ~ ~
execute if score #this.aj.anim aj.i matches 52 run tp @s ^-3.766 ^-4.747 ^-5.622 ~ ~
execute if score #this.aj.anim aj.i matches 53 run tp @s ^-3.769 ^-4.764 ^-5.623 ~ ~
execute if score #this.aj.anim aj.i matches 46 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:777}
execute if score #this.aj.anim aj.i matches 48 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:780}
execute if score #this.aj.anim aj.i matches 53 as @e[type=armor_stand,tag=aj.ramiel_mode_4.mid2,distance=..21] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with green_dye{CustomModelData:785}