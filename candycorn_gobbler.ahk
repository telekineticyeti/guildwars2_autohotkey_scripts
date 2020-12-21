Interval := 1000 * 5.15 ; 5 seconds
Increment := 0

f8::
  Toggle := !Toggle

  if (Toggle) {
    Click, 2
    Increment++
    SetTimer, DoGobble, % Interval
  } else {
    SetTimer, DoGobble, Off
    ToolTip,
    Increment = 0
  }
  Return

DoGobble:
  Increment++
  Click, 2
  Candy := (3*Increment)
  ToolTip, Ran %Increment% times and gobbled %Candy% candycorn.
return