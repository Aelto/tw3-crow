![header](docs/header.webp)
# CROW - Permissive combat modules
CROW is a modular package, it consists of multiple mods that you can install individually or combined.

- [CROW Combat Stamina](https://github.com/Aelto/tw3-crow/blob/master/src/modCrowCombatStamina/README.md): decreases the passive stamina regeneration but greatly reward landing successful hits by providing stamina regeneration buffs for a short duration
- [CROW Combat Defense](https://github.com/Aelto/tw3-crow/blob/master/src/modCrowCombatDefense/README.md): puts the counters (perfect parries) at the center of the combat system and transforms dodges into a positioning tool to create a truly melee & fast paced combat experience

# Combat Stamina
Unlike stamina systems where you are punished for doing actions by losing stamina, this mod goes the opposite way by drastically decreasing the stamina you'd get by playing passively (passive regeneration) and by giving you an incentive to play aggressively.

In terms of time investment (due to the attack animations) vs stamina regeneration gained, heavy attacks are far superior to fast attacks. This creates an incentive to go for a more aggressive but riskier fighting style whenever possible to maximize the stamina gain, indirectly causing you to play the best you can without applying any limits to what you can do.

# Combat Defense
As the player you are now able to parry everything, no exception even magical attacks. You are also able to parry whenever you want, be it in the middle of an attack or even of a previous parry, allowing you to chain parries as long as your timing is right. The parrying check does not depend on Geralt's guard animation anymore, pressing the key at the right time is all it takes.

Parrying an attack extends the duration of all CROW stamina regen buffs (you gained by attacking) by 1s but does not give any buff directly. Allowing you to gain even more stamina by countering the enemy attacks, but if you only rely on parries then you may lack the stamina regen you need for the crowd-control provided by signs.

Dodges were made faster, so fast they are now much more useful as a positioning tool and less useful as a dodging tool. Their duration being reduced halves the amount of i-frames you get from them, but you are also free to continue attacking much sooner.

# Combat Aggression
The aggression level of your opponents is now tied to their stamina level. As their perform actions and consume their stamina, their aggressiveness will lower, offering you opportunities to engage. However as their health decreases they receive a boost in stamina, allowing them to reciprocate proportionally to the hits they've performed.

Additionally the rules for their ability to counter attack were tweaked to make them less predictible. Where it used to be every 3 consecutive hits, it is now tied to the stamina level of the enemy with a slight random variation on top of it. An exhausted creature is less inclined to defend itself aggressively through a counter-attack and instead will opt for dodges in those situations, however as you hit the enemy and as its stamina level increases the chances of being countered increases.

The combination of the other modules where an aggressive playstyle is recommended, and where you're given the tools to face such situations such as permissive counters and non punishing dodges; the fights will often turn into a dance between you and the enemy until one decides to dodge out or dies...

# Known issues
 - It is possible that after updating your game, or uninstalling CROW then installing it back after playing a bit without it, or updating CROW; the mod may stop working in some places. If that happens then run the `crowfix` command. This overwrites all of the previous CROW data from the savefile with a new one to ensure it's up to date.

## Dependencies
 - `mod_sharedutils_helpers`
 - `mod_sharedutils_storage`
 - `mod_sharedutils_customcooldowns`
