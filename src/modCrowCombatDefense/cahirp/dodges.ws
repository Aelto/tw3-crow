@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function ProcessCombatActionBuffer)
  at(LogChannel( 'Targeting', "NO SLIDE TARGET" );)
  at(case EBAT_Dodge)
  at(case BS_Released)
  at(actionResult = this.OnPerformEvade( PET_Dodge ))
)
// CROW - Combat Defense - BEGIN
CROW_dodgeEntryPoint(this);
// CROW - Combat Defense - END



@insert(
  file("game/player/r4Player.ws")
  at(class CR4Player)
  at(function ProcessCombatActionBuffer)
  at(LogChannel( 'Targeting', "NO SLIDE TARGET" );)
  at(case EBAT_Roll)
  at(case BS_Released)
  at(actionResult = this.OnPerformEvade( PET_Roll ))
)
// CROW - Combat Defense - BEGIN
CROW_dodgeEntryPoint(this);
// CROW - Combat Defense - END