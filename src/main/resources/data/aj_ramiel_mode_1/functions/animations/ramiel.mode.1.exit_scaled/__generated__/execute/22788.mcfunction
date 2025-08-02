#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,55.901f,-180f]
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,60.027f,-180f]
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,64.072f,-180f]
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,68.117f,-180f]
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,72.162f,-180f]
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,76.207f,-180f]
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,80.252f,-180f]
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,84.297f,-180f]
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,88.342f,-180f]
execute if score #this.aj.anim aj.i matches 54 run tp @s ^0 ^1.492 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 55 run tp @s ^0 ^1.49 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 56 run tp @s ^0 ^1.489 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 57 run tp @s ^0 ^1.488 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 58 run tp @s ^0 ^1.486 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 59 run tp @s ^0 ^1.485 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 60 run tp @s ^0 ^1.483 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 61 run tp @s ^0 ^1.482 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 62 run tp @s ^0 ^1.48 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1779}
execute if score #this.aj.anim aj.i matches 54 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4455}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1779}
execute if score #this.aj.anim aj.i matches 55 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4455}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1777}
execute if score #this.aj.anim aj.i matches 56 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4453}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1777}
execute if score #this.aj.anim aj.i matches 57 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4453}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1775}
execute if score #this.aj.anim aj.i matches 58 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4451}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1775}
execute if score #this.aj.anim aj.i matches 59 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4451}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1773}
execute if score #this.aj.anim aj.i matches 60 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4449}
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1773}
execute if score #this.aj.anim aj.i matches 61 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4449}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:1771}
execute if score #this.aj.anim aj.i matches 62 as @e[type=armor_stand,tag=aj.ramiel_mode_1.innercube6,distance=..14.61] if score @s[tag=aj.state.mode_1] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with diamond{CustomModelData:4447}