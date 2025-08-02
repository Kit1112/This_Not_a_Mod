# ramiel:drop_item.mcfunction
# Если сущность умирает, создаём предмет рядом с её позицией (например, алмаз)
execute at @e[tag=ramiel,tag=damager,health=0] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond"}}
