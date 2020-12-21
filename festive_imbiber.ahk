Interval := 1000 * 3.5
DrinksImbibed := 0

SwitchStackIncrement := 0
SwitchStackAt := 3

f7::
  Toggle := !Toggle

  if (Toggle) {
    Click, 2
    DrinksImbibed++
    SetTimer, DoTheChug, % Interval
  } else {
    SetTimer, DoTheChug, Off
    ToolTip,
    DrinksImbibed = 0
    SwitchStackIncrement = 0
  }
  Return

DoTheChug:
  DrinksImbibed++
  SwitchStackIncrement++

  if (SwitchStackIncrement >= SwitchStackAt) {
    SwitchStackIncrement = 0
    MouseMove, 53, 0, 10, R
  }
  
  Click, 2
  ToolTip, Imbibed %DrinksImbibed% libations. Hic!
return