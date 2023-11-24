@insert(
  note("allow CROW to control whether player can parry anything or not")
  file("game/actor.ws")
  at(class CActor)
  at(function ReduceDamage)
  select(if(attackAction && damageData.IsActionMelee() && attackAction.CanBeParried() && (attackAction.IsParried() || attackAction.IsCountered())))
)
if(attackAction && damageData.IsActionMelee() && (attackAction.CanBeParried() || CROW_canParryAnything()) && (attackAction.IsParried() || attackAction.IsCountered())) // CROW - Combat Defense - BEGIN & END



@insert(
  note("allow CROW to control whether player can parry anything or not")
  file("game/gameplay/damage/damageManagerProcessor.ws")
  at(class W3DamageManagerProcessor)
  at(function ProcessAction)
  select(if(playerVictim && attackAction && attackAction.IsActionMelee() && !attackAction.CanBeParried() && attackAction.IsParried()))
)
if(playerVictim && attackAction && attackAction.IsActionMelee() && !attackAction.CanBeParried() && attackAction.IsParried() && !CROW_canParryAnything()) // CROW - Combat Defense - BEGIN & END



@insert(
  note("allow CROW to control whether player can parry anything or not")
  file("game/gameplay/damage/damageManagerProcessor.ws")
  at(class W3DamageManagerProcessor)
  at(function ProcessActionBuffs)
  select(if(!action.victim.IsAlive() || action.WasDodged() || (attackAction && attackAction.IsActionMelee() && !attackAction.ApplyBuffsIfParried() && attackAction.CanBeParried() && attackAction.IsParried()) ))
)
if(!action.victim.IsAlive() || action.WasDodged() || (attackAction && attackAction.IsActionMelee() && !attackAction.ApplyBuffsIfParried() && (attackAction.CanBeParried() || CROW_canParryAnything()) && attackAction.IsParried()) ) // CROW - Combat Defense - BEGIN & END



@insert(
  file("game/player/player.ws")
  at(class CPlayer)
  at(function CanParryAttack)
  select(return inputHandler.IsActionAllowed(EIAB_Parry) && ParryCounterCheck() && !IsCurrentlyDodging() && super.CanParryAttack();)
)
return CROW_canParryAttack(inputHandler.IsActionAllowed(EIAB_Parry) && ParryCounterCheck() && !IsCurrentlyDodging() && super.CanParryAttack()); // CROW - Combat Defense - BEGIN & END



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function PerformParryCheck)
  select(if(CanParryAttack() &&  FistFightCheck( parryInfo.target, parryInfo.attacker, fistFightParry ) ))
)
if(CROW_canParryAttack(CanParryAttack()) &&  FistFightCheck( parryInfo.target, parryInfo.attacker, fistFightParry ) ) // CROW - Combat Defense



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function PerformParryCheck)
  at(parryHeading = GetParryHeading( parryInfo, parryDir ) ;)
)
// CROW - Combat Defense - BEGIN
CROW_parryEntryPoint(this);
// CROW - Combat Defense - END