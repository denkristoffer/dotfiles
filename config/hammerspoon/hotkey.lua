-- Alfred
hyper:bind({}, 'space', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'space')
  hyper.triggered = true
end)

-- iTerm
hyper:bind({}, '\$', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, '$')
  hyper.triggered = true
end)
