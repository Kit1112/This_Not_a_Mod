#built using mc-build (https://github.com/mc-build/mc-build)

execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-144.918f,57.203f,71.282f]
execute if score #this.aj.anim aj.i matches 63 run tp @s ^1.296 ^-5.996 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 64 run tp @s ^1.528 ^-5.996 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 65 run tp @s ^1.716 ^-5.996 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 66 run tp @s ^1.792 ^-5.981 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 67 run tp @s ^1.812 ^-5.931 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 68 run tp @s ^1.807 ^-5.865 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 69 run tp @s ^1.791 ^-5.794 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 70 run tp @s ^1.783 ^-5.736 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 71 run tp @s ^1.797 ^-5.708 ^-2.054 ~ ~
execute if score #this.aj.anim aj.i matches 63 as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s[tag=aj.state.default] aj.id = #this.aj.id aj.i run item replace entity @s armor.head with gold_ingot{CustomModelData:318}