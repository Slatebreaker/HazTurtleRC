# cc-turtlecode

## Quick install

1. Name your turtle something with no spaces using `label set <name>`
2. Run `wget run https://raw.githubusercontent.com/HazmatDrone/cc-turtlecode/master/install.lua` on your turtle and your phone.


## Fuelling
Open the leftmost terminal on your turtle and type `refuel x` with fuel in hand, replacing `x` with the amount of fuel

## Direct control (with associated commands)
- `W`, `A`, `S`, `D` to move forwards, backwards, and turn. (commands: `mf` `mb` `tl` `tr`)
- `Space` and `Shift` to move up and down. (commands: `mu` `md`)
- `R`, `F` and `V` to dig up, forwards, and down respectively. (commands: `du` `df` `dd`)
- `T`, `G` and `C` to use/place up, forwards, and down respectively. (commands: `pu` `pf` `pd`)
- `Tab` to enter a command manually.
- `Enter` to repeat the last command.

## Other recognised commands
- All the commands specified above
- `dig` will dig a 1x2 tunnel until told to stop, using blocks to build bridges if necessary.
- `dig3x2` will dig a 3x2 tunnel until told to stop, using blocks to build if necessary. Due to having to rotate a lot, is substantially slower.
- `stop` will stop any currently running task. (Note that any new command sent will also just overwrite the previously running command)
