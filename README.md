# HazTurtleRC

Remote-controlled turtle using a pocket computer for the ComputerCraft mod in Minecraft.

Can be moved around with WASD-style controls as well as given some basic automatic tasks.

## Components

### Critical
- A turtle with a wireless modem
- A pocket computer with a wireless modem

### Optional
- Advanced turtle and pocket computer
- Ender modems instead of wireless modems for infinite range
- A pickaxe or similar tool attached to the turtle for digging

## Quick install

1. **Name your turtle** something with no spaces using `label set <name>`, replacing `<name>` with the desired name.
2. Run `wget run https://raw.githubusercontent.com/HazmatDrone/cc-turtlecode/master/update.lua` on your **turtle and your phone**.
3. Reboot both devices.
4. On your phone, type `ctl <turtle>` replacing `<turtle>` with the label you set in **Step 1**. (This setting will be remembered)

## Controlling the Turtle

### Fuelling
Before you can move the turtle, you need to fuel it with smeltable items, e.g. coal, wood, lava buckets. Each minecraft-item you can 
Open the leftmost terminal on your turtle and type `refuel x` with fuel in the turtle's selected slot, replacing `x` with the amount of fuel

### Direct control (with associated commands)
- `W` `A` `S` `D` to move forwards, backwards, and turn. (commands: `mf` `mb` `tl` `tr`)
- `Space` and `Shift` to move up and down. (commands: `mu` `md`)
- `R`, `F` and `V` to dig up, forwards, and down respectively. (commands: `du` `df` `dd`)
- `T`, `G` and `C` to use/place up, forwards, and down respectively. (commands: `pu` `pf` `pd`)
- `Tab` to enter a command manually.
- `Enter` to repeat the last command.

### Other recognised commands
- All the commands specified above
- `dig` will dig a 1x2 tunnel until told to stop, using blocks to build bridges if necessary.
- `dig3x2` will dig a 3x2 tunnel until told to stop, using blocks to build if necessary. Due to having to rotate a lot, is substantially slower.
- `stop` will stop any currently running task. (Note that any new command sent will also just overwrite the previously running command)

## Troubleshooting Tips
If your turtle isn't moving, try the following:
- Make sure to turn the turtle ON each time after placing it!
- Make sure you have fuelled the turtle
- Make sure the name of the turtle matches the name you are using with `ctl`
- Ensure both devices have a wireless modem attached
- Be sure that you have installed the program on both your turtle and phone
