#built using mc-build (https://github.com/mc-build/mc-build)

execute unless entity @s[tag=aj.ramiel_defeat.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"aj_ramiel_defeat:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"ramiel_defeat","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/113
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/114
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/115
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/116
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.base,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/117
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/118
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/119
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/120
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.bone8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/121
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.base2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/122
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/123
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/124
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/125
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/126
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/127
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/128
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/129
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/130
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike9,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/131
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike10,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/132
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike11,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/133
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike12,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/134
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike13,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/135
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike14,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/136
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike15,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/137
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.spike16,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/138
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/139
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece2,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/140
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece3,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/141
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece4,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/142
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece5,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/143
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece6,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/144
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece7,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/145
execute as @e[type=armor_stand,tag=aj.ramiel_defeat.piece8,distance=..20.58] if score @s aj.id = #this.aj.id aj.i run function aj_ramiel_defeat:set_state/__generated__/execute/146