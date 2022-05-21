hyper:bind({}, "b", function()
  local _, output = hs.osascript.applescriptFromFile("toggle-headphones.applescript")
  hs.notify.new({title="Hammerspoon", informativeText=output}):send()
  hyper.triggered = true
end)
