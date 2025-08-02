#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,30f,180f]
execute if score #this.aj.anim aj.i matches 21 run tp @s ^-3.785 ^-0.175 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 22 run tp @s ^-3.785 ^-0.208 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 23 run tp @s ^-3.785 ^-0.239 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 24 run tp @s ^-3.785 ^-0.271 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 25 run tp @s ^-3.785 ^-0.304 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 26 run tp @s ^-3.785 ^-0.336 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 27 run tp @s ^-3.785 ^-0.367 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 28 run tp @s ^-3.785 ^-0.399 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 29 run tp @s ^-3.785 ^-0.431 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 30 run tp @s ^-3.785 ^-0.463 ^-6.556 ~ ~
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3150}
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3149}
execute if score #this.aj.anim aj.i matches 23 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3148}
execute if score #this.aj.anim aj.i matches 24 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3196}
execute if score #this.aj.anim aj.i matches 25 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3146}
execute if score #this.aj.anim aj.i matches 26 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3145}
execute if score #this.aj.anim aj.i matches 27 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3144}
execute if score #this.aj.anim aj.i matches 28 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3143}
execute if score #this.aj.anim aj.i matches 29 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3142}
execute if score #this.aj.anim aj.i matches 30 as @e[type=armor_stand,tag=aj.ramiel_mode_3.up6,distance=..17.4] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with iron_ingot{CustomModelData:3141}