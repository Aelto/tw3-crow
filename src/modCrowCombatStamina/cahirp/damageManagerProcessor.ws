@insert(
  file("game/gameplay/damage/damageManagerProcessor.ws")
  at(class W3DamageManagerProcessor)
  at(function ProcessActionDamage)
  at(LogDMHits("*** There is no incoming damage set (probably only buffs).", action))
  above(if(directDmgIndex != -1))
)
// CROW - Combat Stamina - BEGIN
CROW_damageModifier(action, this.playerAttacker, this.attackAction);
// CROW - Combat Stamina - END