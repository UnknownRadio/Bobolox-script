local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = lib.CreateLib("Key System Video", "DarkTheme")

local Main = window:NewTab("Check Key")
local Section = Main:NewSection("Key System")

_G.Key = "nothing yet"

Section:NewButton("Copy Key Link", "Paste link in browser", function()
    setclipboard("https://work.ink/1VHD/lzcngttr") -- Add your key link
end)

local KeyLabel = Section:NewLabel("Key 1 | ".. _G.Key)
local KeyInput = Section:NewTextBox("Key", "Key",
    function(txt)
        KeyLabel:UpdateLabel("Key > " .. txt)
        _G.Key = txt
        CheckKey()
    end)

_G.CheckKey = false
local OutputLabel = Section:NewLabel("")  
function CheckKey()
    if _G.CheckedKey == true then
        return
    end
    local key = game:HttpGet("https://redirect-api.work.ink/tokenValid/" .. _G.Key .. "?linkId=64581")
    if key == 'False' then
        OutputLabel:UpdateLabel("Key incorrect")
        return
    end

    _G.CheckedKey = true
    if game.PlaceId == 4483381587 then
        local script = loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        if script then
            script()
        else
            OutputLabel:UpdateLabel("Loaded! you can close this tab now.")
        end
    else 
    OutputLabel:UpdateLabel("Unsupported Game")
    end
end
