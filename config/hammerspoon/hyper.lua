-- A global variable for the Hyper Mode
hyper = hs.hotkey.modal.new({}, "F19")

-- Enter Hyper Mode when F20 (Hyper/Capslock) is pressed
local function enterHyperMode()
  hyper.triggered = false
  hyper:enter()
end

-- Leave Hyper Mode when F20 (Hyper/Capslock) is pressed,
-- send ESCAPE if no other keys are pressed.
local function exitHyperMode()
  hyper:exit()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
hs.hotkey.bind({}, 'F20', enterHyperMode, exitHyperMode)
