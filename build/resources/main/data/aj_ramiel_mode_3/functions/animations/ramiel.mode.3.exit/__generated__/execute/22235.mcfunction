#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,-30f,0f]
execute if score #this.aj.anim aj.i matches 141 run tp @s ^1.475 ^-1.918 ^2.554 ~ ~
execute if score #this.aj.anim aj.i matches 142 run tp @s ^1.454 ^-1.918 ^2.519 ~ ~
execute if score #this.aj.anim aj.i matches 143 run tp @s ^1.434 ^-1.918 ^2.484 ~ ~
execute if score #this.aj.anim aj.i matches 144 run tp @s ^1.413 ^-1.918 ^2.447 ~ ~
execute if score #this.aj.anim aj.i matches 145 run tp @s ^1.391 ^-1.918 ^2.41 ~ ~
execute if score #this.aj.anim aj.i matches 146 run tp @s ^1.37 ^-1.918 ^2.372 ~ ~
execute if score #this.aj.anim aj.i matches 147 run tp @s ^1.341 ^-1.918 ^2.323 ~ ~
execute if score #this.aj.anim aj.i matches 148 run tp @s ^1.311 ^-1.918 ^2.271 ~ ~
execute if score #this.aj.anim aj.i matches 149 run tp @s ^1.277 ^-1.918 ^2.213 ~ ~
execute if score #this.aj.anim aj.i matches 150 run tp @s ^1.243 ^-1.918 ^2.153 ~ ~
execute if score #this.aj.anim aj.i matches 141 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5609}
execute if score #this.aj.anim aj.i matches 142 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5608}
execute if score #this.aj.anim aj.i matches 143 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5607}
execute if score #this.aj.anim aj.i matches 144 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5606}
execute if score #this.aj.anim aj.i matches 145 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5618}
execute if score #this.aj.anim aj.i matches 146 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5604}
execute if score #this.aj.anim aj.i matches 147 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5603}
execute if score #this.aj.anim aj.i matches 148 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5602}
execute if score #this.aj.anim aj.i matches 149 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5601}
execute if score #this.aj.anim aj.i matches 150 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up12,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:5600}