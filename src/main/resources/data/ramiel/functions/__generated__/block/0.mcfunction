#built using mc-build (https://github.com/mc-build/mc-build)

execute unless score r.firing_mode value matches 1 unless score r.dying value matches 1 unless score r.animating value matches 1 run tp @s ~ ~ ~ ~0.3 ~
tp @e[tag=emitter] ~ ~ ~
tp @e[tag=damager] ~ ~-1 ~
bossbar set minecraft:ramiel players
bossbar set minecraft:ramiel players @a[distance=..100]
execute if score shootmode value matches 3 run function ramiel:mode/3/spin
execute if score Ramiel r.health matches ..0 unless score r.attacking value matches 1 unless score r.animating value matches 1 unless score r.dying value matches 1 run function ramiel:defeat


execute as @e[type=arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=trident,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:anti_gravity_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:antimatter_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:copper_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:daemonium_shotshell_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:dimlite_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:exodium_round_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:flare_gun_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:gold_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:guided_energy_blast_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:gunkshot_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:holy_round_projectile_no_gravity,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:holy_round_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:laser_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:onyx_blast_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:shadowflame_bullet_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:soulshot_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:suppressed_gold_round_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:throwing_bomb_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:unholy_lance_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:water_blast_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:holy_round_aoe,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:rocket_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=minecraft:lightning_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=minecells:custom_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:lightning_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock 
execute as @e[type=terramity:fireball_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=terramity:enderswap_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock  
execute as @e[type=terramity:hellfire_pellet,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock 
execute as @e[type=terramity:plague_pellet,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock 
execute as @e[type=terramity:razor_leaf,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock 
execute as @e[type=terramity:shock_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock 
execute as @e[type=terramity:soulshot_projectile_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=quark:pickarang,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=quark:flamerang,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=quark:torch_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=apotheosis:broadhead_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=apotheosis:explosive_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=apotheosis:mining_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=apotheosis:obsidian_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=supplementaries:bomb,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=supplementaries:brick_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=supplementaries:rope_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=supplementaries:slingshot_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=alexsmobs:shark_tooth_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=create:potato_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=call_of_yucutan:dart,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=call_of_yucutan:obsidian_arrow_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=call_of_yucutan:obsidian_arrow_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:amethyst_cluster_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:coral_bardiche,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:coral_spear,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:phantom_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:phantom_halberd,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:poison_dart,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:sandstorm_projectile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:tidal_hook,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:void_scatter_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:void_rune,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:wither_homing_missile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:wither_howitzer,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=cataclysm:wither_missile,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=ars_nouveau:an_lightning,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:wand_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:tome_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:thrown_wep,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:thrown_ice,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:seeker_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:nature_bolt,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=twilightforest:ice_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=illagerinvasion:hatchet,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=netherexp:phasmo_arrow,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=netherexp:soul_bullet,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=simplyswords:simplybeeentity,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock
execute as @e[type=simplyswords:simplybeeentity,tag=!blocked,distance=..15] at @s run function ramiel:atfield/projectileblock










