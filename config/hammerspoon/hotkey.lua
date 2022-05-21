function openApp(name)
  local app = hs.application.get(name)

  if app and app:isFrontmost() then
    app:hide()
  else
    hs.application.launchOrFocusByBundleID(name)
  end
end

-- 1Password autofill
hyper:bind({}, '1', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, '1')
  hyper.triggered = true
end)

-- Alfred
hyper:bind({}, 'space', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'space')
  hyper.triggered = true
end)

-- iA Writer
hyper:bind({}, 'w', function()
  openApp('pro.writer.mac')
  hyper.triggered = true
end)

-- iTerm
hs.hotkey.bind({}, 'f18', function()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, '$')
  end
end)

hyper:bind({}, 'f18', function()
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, '$')
  hyper.triggered = true
end)

-- Messages
hyper:bind({}, 'm', function()
  openApp('com.apple.MobileSMS')
  hyper.triggered = true
end)

-- Safari
hyper:bind({}, 's', function()
  openApp('com.apple.Safari')
  hyper.triggered = true
end)

-- Things
hyper:bind({}, 't', function()
  openApp('com.culturedcode.ThingsMac')
  hyper.triggered = true
end)

hyper:bind({'cmd'}, 't', function()
  local app = hs.application.get(name)

  if app then
    hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 't')
  else
    openApp('com.culturedcode.ThingsMac')
    hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 't')
  end
  hyper.triggered = true
end)

-- Toggle Dock
hyper:bind({}, 'd', function()
  hs.eventtap.keyStroke({'cmd','alt'}, 'd')
  hyper.triggered = true
end)

-- VS Code
hyper:bind({}, 'c', function()
  openApp('com.microsoft.VSCode')
  hyper.triggered = true
end)
