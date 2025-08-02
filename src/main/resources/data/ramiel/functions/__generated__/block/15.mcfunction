#built using mc-build (https://github.com/mc-build/mc-build)

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 2
playsound minecraft:item.shield.break master @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Damage:336}}]}]
playsound minecraft:item.shield.break master @s[nbt={SelectedItem:{id:"minecraft:shield",tag:{Damage:336}}}]


item replace entity @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b,tag:{Damage:336}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"terramity:giant_dungeon_slab",Slot:-106b,tag:{Damage:1008}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"call_of_yucutan:hematite_shield",Slot:-106b,tag:{Damage:150}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"twilightforest:knightmetal_shield",Slot:-106b,tag:{Damage:1024}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"ars_nouveau:enchanters_shield",Slot:-106b,tag:{Damage:500}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"cataclysm:black_steel_targe",Slot:-106b,tag:{Damage:840}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:cudgel",Slot:-106b,tag:{Damage:500}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:rampart",Slot:-106b,tag:{Damage:400}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:assault_shield",Slot:-106b,tag:{Damage:600}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:bloodthirsty_shield",Slot:-106b,tag:{Damage:500}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:greed_shield",Slot:-106b,tag:{Damage:300}}]}] weapon.offhand with air
item replace entity @s[nbt={Inventory:[{id:"minecells:ice_shield",Slot:-106b,tag:{Damage:360}}]}] weapon.offhand with air


item replace entity @s[nbt={SelectedItem:{id:"minecraft:shield",tag:{Damage:336}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"terramity:giant_dungeon_slab",tag:{Damage:1008}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"call_of_yucutan:hematite_shield",tag:{Damage:150}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"twilightforest:knightmetal_shield",tag:{Damage:1024}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"twilightforest:ars_nouveau:enchanters_shield",tag:{Damage:500}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"cataclysm:black_steel_targe",tag:{Damage:840}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:cudgel",tag:{Damage:500}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:rampart",tag:{Damage:400}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:assault_shield",tag:{Damage:600}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:bloodthirsty_shield",tag:{Damage:500}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:greed_shield",tag:{Damage:300}}}] weapon.mainhand with air
item replace entity @s[nbt={SelectedItem:{id:"minecells:ice_shield",tag:{Damage:360}}}] weapon.mainhand with air


execute as @s if entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"terramity:giant_dungeon_slab"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"call_of_yucutan:hematite_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"twilightforest:knightmetal_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"ars_nouveau:enchanters_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"cataclysm:black_steel_targe"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:cudgel"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:rampart"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:assault_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:bloodthirsty_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:greed_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage
execute as @s if entity @s[nbt={SelectedItem:{id:"minecells:ice_shield"}}] run item modify entity @s weapon.mainhand ramiel:damage


execute as @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"terramity:giant_dungeon_slab",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"terramity:giant_dungeon_slab"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"call_of_yucutan:hematite_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"call_of_yucutan:hematite_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"twilightforest:knightmetal_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"twilightforest:knightmetal_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"ars_nouveau:enchanters_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"ars_nouveau:enchanters_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"cataclysm:black_steel_targe",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"cataclysm:black_steel_targe"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:cudgel",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:cudgel"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:rampart",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:rampart"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:assault_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:assault_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:bloodthirsty_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:bloodthirsty_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:greed_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:greed_shield"}}] run item modify entity @s weapon.offhand ramiel:damage
execute as @s[nbt={Inventory:[{id:"minecells:ice_shield",Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{id:"minecells:ice_shield"}}] run item modify entity @s weapon.offhand ramiel:damage


playsound minecraft:item.shield.block master @s
tag @s add shielddamaged
scoreboard players operation Ramiel range = r.maxRange range