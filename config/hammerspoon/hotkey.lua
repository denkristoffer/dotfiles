function openApp(name)
  local app = hs.application.get(name)

  if app and app:isFrontmost() then
    app:hide()
  else
    hs.application.launchOrFocusByBundleID(name)
  end
end

-- 1Password autofill
hyper:bind({}, 'p', function()
  hyper.triggered = true
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'p')
end)

-- Alfred
hyper:bind({}, 'space', function()
  hyper.triggered = true
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 'space')
end)

-- iA Writer
hyper:bind({}, 'w', function()
  hyper.triggered = true
  openApp('pro.writer.mac')
end)

-- iTerm
hs.hotkey.bind({}, 'f18', function()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, '$')
    hyper.triggered = true
  end
end)

hyper:bind({}, 'f18', function()
  hyper.triggered = true
  hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, '$')
end)

-- Messages
hyper:bind({}, 'm', function()
  hyper.triggered = true
  openApp('com.apple.MobileSMS')
end)

-- Safari
hyper:bind({}, 's', function()
  hyper.triggered = true
  openApp('com.apple.Safari')
end)

-- Things
hyper:bind({}, 't', function()
  hyper.triggered = true
  openApp('com.culturedcode.ThingsMac')
end)

hyper:bind({'cmd'}, 't', function()
  local app = hs.application.get(name)
  hyper.triggered = true

  if app then
    hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 't')
  else
    openApp('com.culturedcode.ThingsMac')
    hs.eventtap.keyStroke({'cmd','alt','shift','ctrl'}, 't')
  end
end)

-- Toggle Dock
hyper:bind({}, 'd', function()
  hyper.triggered = true
  hs.eventtap.keyStroke({'cmd','alt'}, 'd')
end)

-- VS Code
hyper:bind({}, 'c', function()
  hyper.triggered = true
  openApp('com.microsoft.VSCode')
end)
