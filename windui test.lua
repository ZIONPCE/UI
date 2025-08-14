-- 加载界面
local loadingScreen = Instance.new("ScreenGui")
loadingScreen.Name = "ZScriptLoadingScreen"
loadingScreen.IgnoreGuiInset = true
loadingScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
frame.BorderSizePixel = 0
frame.Parent = loadingScreen

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 200, 0, 200)
logo.Position = UDim2.new(0.5, -100, 0.4, -100)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://" -- 这里可以替换为您的logo图片ID
logo.Parent = frame

local title = Instance.new("Z某人")
title.Size = UDim2.new(0, 300, 0, 50)
title.Position = UDim2.new(0.5, -150, 0.6, 0)
title.BackgroundTransparency = 1
title.Text = "Z脚本 正在加载..."
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 30
title.Parent = frame

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0.6, 0, 0, 20)
progressBar.Position = UDim2.new(0.2, 0, 0.7, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
progressBar.BorderSizePixel = 0
progressBar.Parent = frame

local progressFill = Instance.new("Frame")
progressFill.Size = UDim2.new(0, 0, 1, 0)
progressFill.Position = UDim2.new(0, 0, 0, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
progressFill.BorderSizePixel = 0
progressFill.Parent = progressBar

local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(0.6, 0, 0, 30)
statusText.Position = UDim2.new(0.2, 0, 0.75, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "初始化..."
statusText.TextColor3 = Color3.fromRGB(200, 200, 200)
statusText.Font = Enum.Font.SourceSans
statusText.TextSize = 18
statusText.Parent = frame

loadingScreen.Parent = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- 模拟加载过程
local function updateProgress(progress, status)
    progressFill.Size = UDim2.new(progress, 0, 1, 0)
    statusText.Text = status
    task.wait(0.1)
end

-- 加载步骤
coroutine.wrap(function()
    updateProgress(0.1, "正在初始化反挂机系统...")
    print("反挂机开启")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
       vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       wait(1)
       vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

    updateProgress(0.2, "正在加载音效...")
    local Sound = Instance.new("Sound")
    Sound.Parent = game.SoundService
    Sound.SoundId = "rbxassetid://4590662766"
    Sound.Volume = 3
    Sound.PlayOnRemove = true
    Sound:Destroy()
    
    updateProgress(0.3, "正在加载卡密...")
    local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/CNHM/asg/refs/heads/main/wind%20ui.lua"))()
    
    updateProgress(0.5, "正在创建主窗口...")
    -- 这里继续您原来的脚本内容
    
    updateProgress(0.7, "正在初始化功能模块...")
    -- 继续您原来的脚本内容...
    
    updateProgress(1.0, "加载完成!")
    task.wait(1)
    loadingScreen:Destroy()
end)()
    
    local Window = WindUI:CreateWindow({
        Title = "Z脚本",
        Icon = "user-check",
        Author = "作者:Z某人",
        Folder = "CloudHub",
        Size = UDim2.fromOffset(580, 460),
        Transparent = true,
        Theme = "Dark",
        Resizable = true,
        SideBarWidth = 200,
        Background = "https://i.postimg.cc/QxWWGyHL/IMG-20250806-220614.png",
        BackgroundImageTransparency = 0.42,
        HideSearchBar = false,
        ScrollBarEnabled = true,
        User = {
            Enabled = true,
            Anonymous = false,
            Callback = function()
                print("clicked")
            end,
        },
        KeySystem = {
            Key = { "ZMRENPBGHTCY", "5678" },
            Note = "Example Key System.",
            Thumbnail = {
                Image = "rbxassetid://",
                Title = "Z某人",
            },
            URL = "https://discord.gg/2mvb9CH6",
            SaveKey = false,
        },
    })

local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
        
Window:EditOpenButton({
    Title = "   打开Z脚本   ",
    Icon = "shield-check",
    CornerRadiu = UDim.new(0,16),
    StrokeThickness = 3,
    Color = ColorSequence.new( 
        Color3.fromHex("000000"), 
        Color3.fromHex("FFFFFF"), 
        Color3.fromHex("000000")   
    ),
    Draggable = true,
})

local Tab = Window:Tab({
    Title = "公告",
    Icon = "app-window",
    Locked = false,
})

local Section = Tab:Section({ 
    Title = "重做脚本",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Section = Tab:Section({ 
    Title = "QQ群11007580643",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Section = Tab:Section({ 
    Title = "QQ群21045061775",
    TextXAlignment = "Left",
    TextSize = 17, -- Default Size
})

local Tab = Window:Tab({
    Title = "通用",
    Icon = "bolt",
    Locked = false,
})

local Slider = Tab:Slider({
    Title = "移动速度",
    
    Step = 1,
    
    Value = {
        Min = 0,
        Max = 320,
        Default = 16,
    },
    Callback = function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

local Slider = Tab:Slider({
    Title = "跳跃高度",
    
    Step = 1,
    
    Value = {
        Min = 50,
        Max = 1000,
        Default = 50,
    },
    Callback = function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

local Slider = Tab:Slider({
    Title = "重力",
    
    -- To make float number supported, 
    -- make the Step a float number.
    -- example: Step = 0.1
    Step = 1,
    
    Value = {
        Min = 0,
        Max = 1000,
        Default = 196,
    },
    Callback = function(value)
    game.Workspace.Gravity = value
    end
})

local Button = Tab:Button({
    Title = "爬墙",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Wall-Walk-9153"))()
    end
})

local Button = Tab:Button({
    Title = "无限跳",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

local Button = Tab:Button({
    Title = "选人甩飞",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Fling%20Player'))()
    end
})

local Button = Tab:Button({
    Title = "飞行V3",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CNHM/asg/refs/heads/main/fly.lua"))()
    end
})

local Button = Tab:Button({
    Title = "穿墙",
    Desc = "大部分服务器通用",
    Locked = false,
    Callback = function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Name = "NoclipGUI"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 150)
frame.Position = UDim2.new(0.5, -125, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 2
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
titleBar.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -60, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "穿墙"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextScaled = true
titleLabel.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0.1, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
closeButton.Text = "关闭"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 25, 0, 25)
minimizeButton.Position = UDim2.new(1, -60, 0.1, 0)
minimizeButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
minimizeButton.Text = "收缩"
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.Parent = titleBar

local toggleNoclipButton = Instance.new("TextButton")
toggleNoclipButton.Size = UDim2.new(0.8, 0, 0, 40)
toggleNoclipButton.Position = UDim2.new(0.1, 0, 0.4, 0)
toggleNoclipButton.Text = "穿墙: 关闭"
toggleNoclipButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
toggleNoclipButton.TextColor3 = Color3.new(1, 1, 1)
toggleNoclipButton.Parent = frame

local creditLabel = Instance.new("TextLabel")
creditLabel.Size = UDim2.new(1, 0, 0, 20)
creditLabel.Position = UDim2.new(0, 0, 0.85, 0)
creditLabel.BackgroundTransparency = 1
creditLabel.Text = ""
creditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
creditLabel.TextScaled = true
creditLabel.Font = Enum.Font.SourceSansBold
creditLabel.Parent = frame

-- Noclip Functionality
local noclip = false
local function toggleNoclip()
    noclip = not noclip
    toggleNoclipButton.Text = noclip and "穿墙: 开启" or "穿墙: 关闭"
    toggleNoclipButton.BackgroundColor3 = noclip and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(100, 100, 100)

    while noclip do
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
        task.wait()
    end
end

toggleNoclipButton.MouseButton1Click:Connect(toggleNoclip)

-- Minimize GUI Function
local minimized = false
minimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    for _, obj in pairs(frame:GetChildren()) do
        if obj ~= titleBar and obj ~= creditLabel then
            obj.Visible = not minimized
        end
    end
    frame.Size = minimized and UDim2.new(0, 250, 0, 30) or UDim2.new(0, 250, 0, 150)
    minimizeButton.Text = minimized and "展开" or "收缩"
end)

-- Close GUI Function
closeButton.MouseButton1Click:Connect(function()
    noclip = false
    screenGui:Destroy()
end)

print("穿墙UI加载成功！")
    end
})

local Button = Tab:Button({
    Title = "快速互动",
    Desc = "",
    Locked = false,
    Callback = function()
    game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(v)
    v.HoldDuration = 0
end)
    end
})

local Button = Tab:Button({
    Title = "电脑键盘",
    Desc = "高级版",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
    end
})

local Button = Tab:Button({
    Title = "透视",
    Desc = "Z某制作",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/raw/refs/heads/main/ESP.lua"))()
    end
})

local Button = Tab:Button({
    Title = "导",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FWwdST5Y"))()
    end
})

local Tab = Window:Tab({
    Title = "99天",
    Icon = "trees",
    Locked = false,
})

local Button = Tab:Button({
    Title = "VEX",
    Desc = "Z某汉化",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/JB/refs/heads/main/99%20nights%20in%20the%20forest.lua"))()
    end
})

local Tab = Window:Tab({
    Title = "建造一架飞机",
    Icon = "plane",
    Locked = false,
})

local Button = Tab:Button({
    Title = "自动飞行",
    Desc = "上升下降等",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/JB/refs/heads/main/fait.lua"))()
    end
})

local Button = Tab:Button({
    Title = "NEPT",
    Desc = "Z某汉化",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/JB/refs/heads/main/b.lua"))()
    end
})

local Tab = Window:Tab({
    Title = "死铁轨",
    Icon = "train-track",
    Locked = false,
})

local Button = Tab:Button({
    Title = "The Darkones",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/TheDarkoneMarcillisePex/Other-Scripts/refs/heads/main/Dead%20Rails%20GUI'))()
    end
})

local Button = Tab:Button({
    Title = "SpeedHubX",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

local Button = Tab:Button({
    Title = "攻速",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HeadHarse/DeadRails/refs/heads/main/V4SWING"))()
    end
})

local Button = Tab:Button({
    Title = "NovazHub",
    Desc = "Z某汉化",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZIONPCE/JB/refs/heads/main/autofarmbond.lua"))()
    end
})

local Tab = Window:Tab({
    Title = "被遗弃",
    Icon = "drama",
    Locked = false,
})

local Button = Tab:Button({
    Title = "Sigmasaken V9",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/sigmaboy-sigma-boy/sigmaboy-sigma-boy/refs/heads/main/StaminaSettings.ESP.PIDC.raw'))()
    end
})

local Button = Tab:Button({
    Title = "XA",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet(('https://github.com/DevSloPo/Main/raw/main/Forsaken')))()
    end
})

local Button = Tab:Button({
    Title = "Httadmin",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet"https://raw.githubusercontent.com/OWOWOWWOW/HTT/main/HT.lua")()
    end
})

local Tab = Window:Tab({
    Title = "DOORS",
    Icon = "door-open",
    Locked = false,
})

local Button = Tab:Button({
    Title = "Blackking",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
    end
})

local Button = Tab:Button({
    Title = "ProHaxV3",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-Prohax-v3-47773"))()
    end
})

local Tab = Window:Tab({
    Title = "自然灾害",
    Icon = "building",
    Locked = false,
})    

local Button = Tab:Button({
    Title = "假延迟",
    Desc = "",
    Locked = false,
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DROID-cell-sys/ANTI-UTTP-SCRIPTT/refs/heads/main/EGOR%20SCRIPT%20BY%20ANTI-UTTP"))()
    end
})