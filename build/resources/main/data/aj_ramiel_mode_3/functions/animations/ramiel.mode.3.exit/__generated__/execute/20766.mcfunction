#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-90f,0f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^2.949 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^2.909 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^2.868 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^2.825 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^2.783 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^2.739 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^2.683 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^2.623 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^2.555 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^2.486 ^-1.918 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4767}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4766}
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4765}
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4764}
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4776}
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4762}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4761}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4760}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4759}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up10,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:4758}