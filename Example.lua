local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI:Localization({
    Enabled = true,
    Prefix = "loc:",
    DefaultLanguage = "en",
    Translations = {
        ["ru"] = {
            ["WINDUI_EXAMPLE"] = "WindUI Пример",
            ["WELCOME"] = "Добро пожаловать в WindUI!",
            ["LIB_DESC"] = "Библиотека для создания красивых интерфейсов",
            ["SETTINGS"] = "Настройки",
            ["APPEARANCE"] = "Внешний вид",
            ["FEATURES"] = "Функционал",
            ["UTILITIES"] = "Инструменты",
            ["UI_ELEMENTS"] = "UI Элементы",
            ["CONFIGURATION"] = "Конфигурация",
            ["SAVE_CONFIG"] = "Сохранить конфигурацию",
            ["LOAD_CONFIG"] = "Загрузить конфигурацию",
            ["THEME_SELECT"] = "Выберите тему",
            ["TRANSPARENCY"] = "Прозрачность окна"
        },
        ["en"] = {
            ["WINDUI_EXAMPLE"] = "WindUI Example",
            ["WELCOME"] = "Welcome to WindUI!",
            ["LIB_DESC"] = "Beautiful UI library for Roblox",
            ["SETTINGS"] = "Settings",
            ["APPEARANCE"] = "Appearance",
            ["FEATURES"] = "Features",
            ["UTILITIES"] = "Utilities",
            ["UI_ELEMENTS"] = "UI Elements",
            ["CONFIGURATION"] = "Configuration",
            ["SAVE_CONFIG"] = "Save Configuration",
            ["LOAD_CONFIG"] = "Load Configuration",
            ["THEME_SELECT"] = "Select Theme",
            ["TRANSPARENCY"] = "Window Transparency"
        }
    }
})

WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local function gradient(text, startColor, endColor)
    local result = ""
    for i = 1, #text do
        local t = (i - 1) / (#text - 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)
        result = result .. string.format('<font color="rgb(%d,%d,%d)">%s</font>', r, g, b, text:sub(i, i))
    end
    return result
end

WindUI:Popup({
    Title = gradient("WindUI Demo", Color3.fromHex("#6A11CB"), Color3.fromHex("#2575FC")),
    Icon = "sparkles",
    Content = "loc:LIB_DESC",
    Buttons = {
        {
            Title = "Get Started",
            Icon = "arrow-right",
            Variant = "Primary",
            Callback = function() end
        }
    }
})


-- Add your service to get key 
--[[
WindUI.Services.mysuperservicetogetkey = {
    Name = "My Super Service",
    Icon = "droplet", -- lucide or rbxassetid or raw link to img
    
    Args = { "ServiceId" }, --       <- \
    --                                   |
    -- important!!!!!!!!!!!!!!!          |
    New = function(ServiceId) -- <------ | Args!!!!!!!!!!!!
        
        function validateKey(key) -- <--- this too important!!!
            -- your function to validate key
            -- see examples at src/utils/
            
            if not key then
                return false, "Key is invalid!" 
                
            end
            
            return true, "Key is valid!" 
        end
        
        function copyLink()
            return setclipboard("link to key system service.")
        end
        
        return {
            -- ↓ do not change this!!1!1!1!1!1!!1!100
            Verify = validateKey, -- <-----  THIS TOO IMPORTANT!!!!!
            Copy = copyLink -- <-------- IMPORTANT!1!1!1!1!1!1!11!
            -- ↑ do not change this!!1!1!1!1!1!!1!100
        }
    end
}
]]

local Window = WindUI:CreateWindow({
    Title = "loc:WINDUI_EXAMPLE",
    Icon = "palette",
    Author = "loc:WELCOME",
    Folder = "WindUI_Example",
    Size = UDim2.fromOffset(580, 490),
    Theme = "Dark",
    -- Background = WindUI:Gradient({
    --     ["0"] = { Color = Color3.fromHex("#0f0c29"), Transparency = 1 },
    --     ["100"] = { Color = Color3.fromHex("#302b63"), Transparency = 0.9 },
    -- }, {
    --     Rotation = 45,
    -- }),
    --Background = "video:https://cdn.discordapp.com/attachments/1337368451865645096/1402703845657673878/VID_20250616_180732_158.webm?ex=68958a01&is=68943881&hm=164c5b04d1076308b38055075f7eb0653c1d73bec9bcee08e918a31321fe3058&",
    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            WindUI:Notify({
                Title = "User Profile",
                Content = "User profile clicked!",
                Duration = 3
            })
        end
    },
    SideBarWidth = 200,
    -- KeySystem = { -- <- ↓ remove this all, if you dont neet the key system
    --     -- Key = { "1234", "5678" },  
    --     Note = "Example Key System. With platoboost, etc.",
    --     -- URL = "https://github.com/Footagesus/WindUI",
    --     -- Thumbnail = {
    --     --     Image = "rbxassetid://",
    --     --     Title = "Thumbnail",
    --     -- },
    --     API = {
    --         {   
    --             -- Title = "Platoboost", -- optional 
    --             -- Desc = "Click to copy.", -- optional
    --             -- Icon = "rbxassetid://", -- optional
                
    --             Type = "platoboost", -- type: platoboost, ...
    --             ServiceId = 5541, -- service id
    --             Secret = "1eda3b70-aab4-4394-82e4-4e7f507ae198", -- platoboost secret
    --         },
    --         {   
    --             -- Title = "Other service", -- optional 
    --             -- Desc = nil, -- optional
    --             -- Icon = "rbxassetid://", -- optional
                
    --             Type = "pandadevelopment", -- type: platoboost, ...
    --             ServiceId = "windui", -- service id
    --         },
    --         {   
    --             Type = "luarmor",
    --             ScriptId = "...",
    --             Discord = "https://discord.com/invite/...",
    --         },
    --         { -- Custom service ( ↑↑ look at line 73 ↑↑ )
    --             Type = "mysuperservicetogetkey",
    --             ServiceId = 42,
    --         }
    --     },
    --     SaveKey = true,
    -- },
})

Window:Tag({
    Title = "v1.6.4",
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "Beta",
    Color = Color3.fromHex("#315dff")
})
local TimeTag = Window:Tag({
    Title = "00:00",
    Color = Color3.fromHex("#000000")
})

local hue = 0

task.spawn(function()
	while true do
		local now = os.date("*t")
		local hours = string.format("%02d", now.hour)
		local minutes = string.format("%02d", now.min)
		
		hue = (hue + 0.01) % 1
		local color = Color3.fromHSV(hue, 1, 1)
		
		TimeTag:SetTitle(hours .. ":" .. minutes)
		TimeTag:SetColor(color)

		task.wait(0.06)
	end
end)


Window:CreateTopbarButton("theme-switcher", "moon", function()
    WindUI:SetTheme(WindUI:GetCurrentTheme() == "Dark" and "Light" or "Dark")
    WindUI:Notify({
        Title = "Theme Changed",
        Content = "Current theme: "..WindUI:GetCurrentTheme(),
        Duration = 2
    })
end, 990)

local Tabs = {
    Main = Window:Section({ Title = "犯罪大亨", Opened = true })
}

local TabHandles = {
    Elements = Tabs.Main:Tab({ Title = "装备枪", Icon = "layout-grid", Desc = "装备枪" })
}

TabHandles.Elements:Button({
    Title = "散弹枪",
    Icon = "bell",   --图片
    Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ac6-Music-Vulnerability-25536"))()
    end
})