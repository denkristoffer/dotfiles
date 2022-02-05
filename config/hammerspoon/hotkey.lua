hyper:bind({}, 'space', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'space')
  hyper.triggered = true
end)
