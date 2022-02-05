hs.hotkey.bind(hyper, "b", function()
  local _, output = hs.osascript.applescriptFromFile("toggle-headphones.applescript")
  hs.alert.show(output)
end)
