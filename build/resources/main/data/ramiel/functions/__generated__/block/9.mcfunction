#built using mc-build (https://github.com/mc-build/mc-build)

function aj_ramiel_statue:animations/statue/start
execute at @s run summon marker ~ ~ ~ {Tags:["emitter","ramiel"]}
execute at @s run summon marker ~ ~ ~ {Tags:["aimer","ramiel"]}
summon wandering_trader ~ ~ ~ {ArmorItems:[{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:255s}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:255s}]}},{}],NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["ramiel","damager"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500}],Offers:{}}