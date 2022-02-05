require 'hyper'
require 'bluetooth'

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


hs.hotkey.bind(hyper, 'c', code)
hs.hotkey.bind(hyper, 'm', messages)
hs.hotkey.bind(hyper, 's', safari)
hs.hotkey.bind(hyper, 'w', writer)
