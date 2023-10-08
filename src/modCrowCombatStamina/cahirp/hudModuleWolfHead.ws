@insert(
  note("declare necessary variables inside module")
  file("game/gui/hud/modules/hudModuleWolfHead.ws")
  at(class CR4HudModuleWolfHead)
  above(function UpdateExperience)
)
// CROW - Combat Stamina - BEGIN
public var CROW_cached_stamina_storage: CROW_StorageCombatStamina;
public var CROW_was_in_combat: bool;
// CROW - Combat Stamina - END



@insert(
  note("override exp bar during combat to display stamina regen")
  file("game/gui/hud/modules/hudModuleWolfHead.ws")
  at(class CR4HudModuleWolfHead)
  at(function UpdateExperience)
  at(curExperience = GetCurrentExperience() - GetLevelExperience();)
)
// CROW - Combat Stamina - BEGIN
if (CROW_onWolfHeadModuleExperienceTick(this, m_fxSetExperience)) {
  return;
}
// CROW - Combat Stamina - END