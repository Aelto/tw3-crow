@insert(
  file("game/gameplay/effects/effects/regen/regenEffect.ws")
  at(class W3RegenEffect)
  above(event OnUpdate)
)
// CROW - Combat Stamina - BEGIN
public var CROW_cached_stamina_storage: CROW_StorageCombatStamina;
public var CROW_was_in_combat: bool;
// CROW - Combat Stamina - END



@insert(
  file("game/gameplay/effects/effects/regen/regenEffect.ws")
  at(class W3RegenEffect)
  at(event OnUpdate)
  at(baseStaminaRegenVal = GetWitcherPlayer().CalculatedArmorStaminaRegenBonus())
  below(regenPoints *= 1 + baseStaminaRegenVal)
)
// CROW - CombatStamina - BEGIN
regenPoints = CROW_staminaRegenPointSetter(this, regenPoints, dt);
// CROW - CombatStamina - END