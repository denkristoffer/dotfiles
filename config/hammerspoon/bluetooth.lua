local bluetooth = require "hs._asm.undocumented.bluetooth"

hs.hotkey.bind(hyper, "b", function()
  bluetooth.power(true)
  local _, output = hs.osascript.applescriptFromFile("connect_headphones.applescript")
  hs.alert.show(output)
end)
