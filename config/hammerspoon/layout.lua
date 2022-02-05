hyper:bind({}, "f", function()
  local win = hs.window.frontmostWindow()
  win:toggleFullScreen()
  hyper.triggered = true
end)
