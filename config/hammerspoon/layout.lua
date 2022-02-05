hs.hotkey.bind(hyper, "f", function()
  local activeWindow = hs.window:focusedWindow()
  
  activeWindow:toggleFullScreen()
end)
