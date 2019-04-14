--
-- Window control
--
hs.hotkey.bind({"control", "shift"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"control", "shift"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.w == max.w / 2 then
    f.w = max.w / 4
  elseif f.w == max.w / 4 then
    f.w = (max.w / 4) * 3
  else
    f.w = max.w / 2
  end

  f.x = max.x
  f.y = max.y
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"control", "shift"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.w == max.w / 2 then
    f.w = max.w / 4
    f.x = max.x + (max.w / 4) * 3
  elseif f.w == max.w / 4 then
    f.w = (max.w / 4) * 3
    f.x = max.x + (max.w / 4)
  else
    f.w = max.w / 2
    f.x = max.x + (max.w / 2)
  end

  f.y = max.y
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"control", "shift"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  print(f.h)
  print(math.floor( max.h / 2 ))
  if f.h == math.floor( max.h / 2 )  then
    f.h = max.h / 4
  elseif f.h == math.floor( max.h / 4 ) then
    f.h = (max.h / 4) * 3
  else
    f.h = max.h / 2
  end

  f.x = max.x
  f.y = max.y
  f.w = max.w

  win:setFrame(f)
end)

hs.hotkey.bind({"control", "shift"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.h == math.floor(max.h / 2) then
    f.h = max.h / 4
    f.y = max.y + (max.h / 4) * 3
  elseif f.h == math.floor(max.h / 4) then
    f.h = (max.h / 4) * 3
    f.y = max.y + (max.h / 4)
  else
    f.h = max.h / 2
    f.y = max.y + (max.h / 2)
  end

  f.x = max.x
  f.w = max.w

  win:setFrame(f)
end)