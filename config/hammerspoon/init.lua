require 'hyper'

require 'bluetooth'
require 'hotkey'
require 'layout'

local log = hs.logger.new('hammerspoon','debug')

function openApp(name)
  local app = hs.application.get(name)

  log.i('open App', name)

  if app then
    if app:isFrontmost() then
      app:hide()
    else
      app:mainWindow():focus()
    end
  else
    hs.application.launchOrFocus(name)
  end
  hyper.triggered = true
end

-- Code
function code()
  openApp('Visual Studio Code')
end

-- iA Writer
function writer()
  openApp('iA Writer')
end

-- Messages
function messages()
  openApp('Messages')
end

-- Safari
function safari()
  openApp('Safari')
end


hyper:bind({}, 'c', code)
hyper:bind({}, 'm', messages)
hyper:bind({}, 's', safari)
hyper:bind({}, 'w', writer)
