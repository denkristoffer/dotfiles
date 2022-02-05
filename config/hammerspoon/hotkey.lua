-- Alfred
hyper:bind({}, 'space', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'space')
  hyper.triggered = true
end)

-- iTerm
hyper:bind({}, 93, function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, '$')
  hyper.triggered = true
end)
