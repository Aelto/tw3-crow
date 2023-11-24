@insert(
  file("game/player/player.ws")
  at(class CPlayer)
  at(function ParryCounterCheck)
  above(return false)
)
// CROW - Combat Defense - BEGIN
return CROW_canCounterAttack();
// CROW - Combat Defense - END



@insert(
  note("override vanilla counter spam detection with CROW's")
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function CheckCounterSpamming)
  above(counterWindowStartTime = ((CNewNPC)attacker).GetCounterWindowStartTime();)
)
// CROW - Combat Defense - BEGIN
return CROW_counterSpammingCheck(attacker, this.counterTimestamps);
// CROW - Combat Defense - END  



@insert(
  note("run vanilla parry logic only if CROW allows it")
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function PerformCounterCheck)
  select[[
    if ( !parryInfo.canBeParried || parryInfo.attacker.HasAbility( 'CannotBeCountered' ) )
			return false;
  ]]
)
if (!CROW_canParryAnything()) { // CROW - Combat Defense
  if ( !parryInfo.canBeParried || parryInfo.attacker.HasAbility( 'CannotBeCountered' ) )
    return false;
} // CROW - Combat Defense



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function PerformCounterCheck)
  at(if(validCounter))
  above(SetBehaviorVariable( 'parryType', ChooseParryTypeIndex( parryInfo ) );)
)
// CROW - Combat Defense - BEGIN
CROW_counterEntryPoint(this);
// CROW - Combat Defense - END



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function ReceivedCombatDamage)
  below(receivedDamageInCombat = true;)
)
// CROW - Combat Defense - BEGIN
this.counterTimestamps.Clear();
// CROW - Combat Defense - END



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function IncreaseUninterruptedHitsCount)
  below(LogUnitAtt("Uninterrupted attacks count increased to " + uninterruptedHitsCount);)
)
// CROW - Combat Defense - BEGIN
this.counterTimestamps.Clear();
// CROW - Combat Defense - END




@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function ProcessCombatActionBuffer)
  below(LogChannel( 'Targeting', "NO SLIDE TARGET" );)
)
// CROW - Combat Defense - BEGIN
CROW_onCombatActionComplete();
// CROW - Combat Defense - END




@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(event OnCombatActionEndComplete)
  below(SetCombatAction( EBAT_EMPTY ))
)
// CROW - Combat Defense - BEGIN
CROW_onCombatActionComplete();
// CROW - Combat Defense - END