This repository is a collection of autohotkey scripts used for automation of consumables in Guild Wars 2. These scripts require [AutoHotKey](https://www.autohotkey.com/) to be installed to use them.

# Important

Arenanet does not condone or allow the use of automation software (AHK or otherwise). If you decide to use these scripts, you do so at your own risk.

# festive_imbiber.ahk

Festive tonics are a cheaper method of acquiring all ranks of the [Masterful Toast achievement](https://wiki.guildwars2.com/wiki/Masterful_Toast) in GW2. The only issue is that tonics have a 3 second cooldown, so it is impractical and boring to manually consume vast stacks of tonics.

Enter festive_imbiber.ahk!

This script will:

- Consume a full stack of tonics, waiting 3.5 seconds between each tonic (the extra .5 second is to account for latencies)
- When a stack is fully consumed, it will move the cursor 53 units to the right (over to the next stack in your bag) and repeat the process for as many stacks as you have on the same row.

Click below to see a video of the imbiber in action, with stack size set to 3:

[![Click here to see a video of the imbiber in action, with stack size set to 3](https://img.youtube.com/vi/oXSInKh3MV4/hqdefault.jpg)](https://www.youtube.com/watch?v=oXSInKh3MV4)

### How to use it

Line up several full stacks of tonics in your inventory. Starting with your cursor hovering over the center of the left-most stack, hit the hotkey to start auto imbibing.

Please note this script does not know when it has reached the end of the screen or when you inventory has ran out of stacks of tonics, and will continue to try to run.

### Notes

You may need to tune the script to meet following requirements:

- Your maximum stack size. The default size of a stack in this script is 250. If you have previously purchased [storage expanders](https://wiki.guildwars2.com/wiki/Storage_Expander), you will need to increase the value of the `SwitchStackAt` variable.
- UI scaling. This script was created for a game client with `Options > Graphic Options > Interface size` set to small. If you are using a different value, you may need to increase the first integer property of the `MouseMove` value from `53`.

# candycorn_gobbler.ahk

This script is simply an auto clicker for the [Candy Corn Gobbler](https://wiki.guildwars2.com/wiki/Candy_Corn_Gobbler) item.

This script will:

- Click to activte the gobbler, then wait 5.5 seconds (the 5 second cooldown of the Gobbler, plus .5 seconds to account for latency) before repeating.
- Notify you via tooltip of how many gobbles have taken place, and how much candycorn was consumed.

Please note this script does not know when your inventory is empty of candycorn, and will continue to run.

### How to use it

Load up your inventory with candy corn, hover over the Candy Corn Gobbler and hit F8 to start gobbling.
