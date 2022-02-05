local hyper = {"cmd", "alt", "ctrl","shift"}
local log = hs.logger.new('hammerspoon','debug')

function openApp(name)
  local app = hs.application.get(name)

  log.i("open App", name)

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

-- iA Writer
function writer()
  openApp("iA Writer")
end

-- Code
function code()
  openApp("Visual Studio Code")
end


hs.hotkey.bind(hyper, 'w', writer)
hs.hotkey.bind(hyper, 'c', code)
