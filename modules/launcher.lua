local appfinder = require("hs.appfinder")
local hotkey = require("hs.hotkey")
local application = require("hs.application")
local funtils = require("hs.fnutils")
local alert = require("hs.alert")

local apps = {
   {shortcut =  "C", app = "Google Chrome"},
   {shortcut = "T", app = "iTerm"},
   {shortcut = "G", app = "Gyazo"},

}

funtils.each(apps, function(item)
   hotkey.bind({"control", "shift"}, item.shortcut, function()
      local app = application.launchOrFocus(item.app)
      if (not app) then
         alert(item.app.."not found.")
      end
   end)
end)
