#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard objectives add LANG_MC_INTERNAL dummy
scoreboard objectives add range dummy
scoreboard objectives add value dummy
scoreboard objectives add cs.shakeTimer dummy
scoreboard objectives add cs.shakeViolence dummy
scoreboard objectives add cs.value dummy
scoreboard objectives add r.health dummy
scoreboard objectives add at_timer dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add shielding dummy
bossbar add ramiel [{"text":"Рамиил ","color":"aqua","bold":true},{"text":"|| ","color":"gray","bold":false,"obfuscated":true},{"text":"Шестой ангел","color":"dark_red","bold":false}]
bossbar set minecraft:ramiel color blue
bossbar set minecraft:ramiel max 500
scoreboard players set r.maxRange range 250
tellraw @a [{"text":"Loaded! ","bold":true,"color":"green"},{"text":"Ramiel Boss Fight Datapack ","color":"aqua","bold":false},{"text":"by ","color":"dark_gray","bold":false},{"text":"F","color":"dark_aqua","bold":false},{"text":"lubberschnub","color":"dark_gray","bold":false}]