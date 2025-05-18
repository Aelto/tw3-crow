![header](docs/header.webp)
CROW is a modular package, it consists of multiple mods that you can install individually or combined. [SHOWCASE VIDEO](https://www.youtube.com/watch?v=tEohUqBgtx8)

- CROW Combat Stamina: decreases the passive stamina regeneration but greatly rewards successful hits by providing stamina regeneration buffs for a short duration
- CROW Combat Defense: puts the counters (perfect parries) at the center of the combat system and transforms dodges into a positioning tool to create a truly melee & fast paced combat experience.
- CROW Aggression: ties the aggression level of your enemies with their stamina, adjust their behaviour to be less predictable
- CROW Combat Regeneration: adds challenge by limiting how easily you can heal back from your mistakes.

# Combat Stamina
Unlike stamina systems where you are punished for doing actions by losing stamina, this mod goes the opposite way by drastically decreasing the stamina you'd get by playing passively (passive regeneration) and by giving you an incentive to play aggressively.

In terms of time investment (due to the attack animations) vs stamina regeneration gained, heavy attacks are far superior to fast attacks. This creates an incentive to go for a more aggressive but riskier fighting style whenever possible to maximize the stamina gain, indirectly causing you to play the best you can without applying any limits to what you can do.

# Combat Defense
As the player you are now able to parry everything, no exception even magical attacks. You are also able to parry whenever you want, be it in the middle of an attack or even of a previous parry, allowing you to chain parries as long as your timing is right. The parrying check does not depend on Geralt's guard animation anymore, pressing the key at the right time is all it takes.

The parry timing detection code was improved by removing the spam detection entirely as it returned more false positives than what it prevented, it was also improved to better detect long winded attacks so the timing window better reflects when the attack hits rather than when it started.

Parrying an attack extends the duration of all CROW stamina regeneration buffs (that you gained by attacking) by 1s but does not give any buff directly. Allowing you to gain even more stamina by countering the enemy attacks, but if you only rely on parries then you may lack the stamina regeneration you need for the crowd-control provided by signs.

Dodges were made faster, so fast they are now much more useful as a positioning tool and less useful as a dodging tool. Their duration being reduced halves the amount of i-frames you get from them, but you are also free to continue attacking much sooner.

# Combat Aggression
The aggression level of your opponents is now tied to their stamina level. As they perform actions and consume their stamina their aggressiveness will lower, offering you more opportunities to engage. However as their health decreases they receive boosts of stamina, allowing them to reciprocate proportionally to the hits they've performed.

Additionally the rules for their ability to counter attack were tweaked to make them less predictible. Where it used to be after every 3 consecutive hits, it is now tied to the stamina level of the enemy with a slight random variation on top of it. An exhausted creature is less inclined to defend itself aggressively through a counter-attack and will instead opt for dodges in those situations, however as you hit the enemy and as its stamina level increases the chances of being countered increases.

The combination of the other modules where an aggressive playstyle is recommended and where you're given the tools to face such situations thanks to permissive counters and non punishing dodges, the fights will often turn into a dance between you and the enemy until one decides to dodge out or dies...

# Combat Regeneration
This module adds a sense of preparation, not by forcing you to chug consumables in order to overcome the opponents strength, but by greatly limiting how much health regeneration you get from these items.

However a lowered health regeneration with nothing else in return would make all encounters extremely deadly, which is not the point of the module. Instead it's here to encourage you to approach the game in a more deliberate manner, where you think about the ongoing fight but also the impact it will have to the future ones if you take too many hits now.

For this reason on top of the health regeneration decrease, Geralt receives only half the damage it would normally take so when you take a hit half the punishment comes as health loss and the other half comes later on as you'll try to heal it back.

Additionally food items last much longer than their intended duration and can also stack, you can for example eat two Bread which will result in two health regeneration effects that both last 20 minutes each. This gives you control over the amount of health and the speed at which it comes back for the scenarios where you may have to quickly heal back to full life without having to stare at the screen for twenty minutes, but doing so too often will come at a price as your food stock will quickly vanish.

# Installing
 - Go to the [latest release](./tw3-crow/latest) and download the archive
 - Drop the content of the archive into your The Witcher 3 directory in order
 - Merge the scripts, even if CROW is your only mod
 - Launch the game

# Uninstalling
 - Remove the CROW modules you have installed from your `mods` folder as usual

## Dependencies
 - `mod_sharedutils_helpers`
 - `mod_sharedutils_storage`
 - `mod_sharedutils_customcooldowns`
