require("/lib/selectblock")
require("lib/remotestop")
require("lib/digbasic")
require("lib/keyInterrupt")
function keyInterruptQ() keyInterrupt(keys.q) end

parallel.waitForAny(
    dig,
    keyInterruptQ,
    remoteStop
)
print("Stopped.")
