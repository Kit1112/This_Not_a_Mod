#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-32.378f,180f]
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-28.645f,-180f]
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-25.778f,-180f]
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-22.594f,180f]
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-19.493f,-180f]
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-16.478f,180f]
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-13.61f,-180f]
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-10.718f,180f]
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [144.75f,-7.981f,-180f]
execute if score #this.aj.anim aj.i matches 99 run tp @s ^0.344 ^2.397 ^-0.543 ~ ~
execute if score #this.aj.anim aj.i matches 100 run tp @s ^0.319 ^2.371 ^-0.584 ~ ~
execute if score #this.aj.anim aj.i matches 101 run tp @s ^0.297 ^2.35 ^-0.615 ~ ~
execute if score #this.aj.anim aj.i matches 102 run tp @s ^0.27 ^2.326 ^-0.65 ~ ~
execute if score #this.aj.anim aj.i matches 103 run tp @s ^0.242 ^2.302 ^-0.683 ~ ~
execute if score #this.aj.anim aj.i matches 104 run tp @s ^0.211 ^2.278 ^-0.715 ~ ~
execute if score #this.aj.anim aj.i matches 105 run tp @s ^0.18 ^2.256 ^-0.744 ~ ~
execute if score #this.aj.anim aj.i matches 106 run tp @s ^0.146 ^2.234 ^-0.772 ~ ~
execute if score #this.aj.anim aj.i matches 107 run tp @s ^0.112 ^2.214 ^-0.797 ~ ~
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:165}
execute if score #this.aj.anim aj.i matches 99 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2841}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:163}
execute if score #this.aj.anim aj.i matches 100 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2839}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:162}
execute if score #this.aj.anim aj.i matches 101 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2838}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:161}
execute if score #this.aj.anim aj.i matches 102 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2837}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:160}
execute if score #this.aj.anim aj.i matches 103 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2836}
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:187}
execute if score #this.aj.anim aj.i matches 104 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2863}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:158}
execute if score #this.aj.anim aj.i matches 105 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2834}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:189}
execute if score #this.aj.anim aj.i matches 106 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2865}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:190}
execute if score #this.aj.anim aj.i matches 107 as @e[type=armor_stand,tag=aj.ramiel_mode_1.bone2,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:2866}