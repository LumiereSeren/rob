local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI.TransparencyValue = 0.3

WindUI:SetTheme("Dark")

WindUI:Popup({
    Title = "欢迎使用长夜月脚本",
    Icon = "sparkles",
    Content = "尊贵的长夜月脚本用户"..game.Players.localPlayer.Name..",测试",
    Buttons = {
        {
            Title = "启动",
            Icon = "arrow-right",
            Variant = "Primary",
            Callback = function() 
                print("脚本已启动")
            end
        }
    }
})

wait(10)

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

local Window = WindUI:CreateWindow({
    Title = "长夜月脚本", 
    Icon = "star", 
    Author = "尊贵的"..game.Players.localPlayer.Name.."，欢迎使用长夜月脚本", 
    Folder = "WindUI_Example", 
    Size = UDim2.fromOffset(400, 250), 
    Background = "rbxassetid:// 16750449550", 
    Theme = "Dark",
    
    User = {
        Enabled = true, 
        Anonymous = false, 
        Callback = function() 
            WindUI:Notify({
                Title = "点吧",
                Content = "不是你真点啊",
                Duration = 3
            })
        end
    },
    SideBarWidth = 170, 
    ScrollBarEnabled = false 
    Background ="rbxassetid:/79942665653488"
})

Window:Tag({
        Title = "v1.0",
        Color = Color3.fromHex("#30ff6a")
    })
    Window:Tag({
        Title = "正式版", 
        Color = Color3.fromHex("#315dff")
    })
    local TimeTag = Window:Tag({
        Title = "马上更新",
        Color = Color3.fromHex("#000000")
    })

local Tabs = {
    Game = Window:Section({ Title = "面板", Icon = "user" ,Opened = true })
}

local TabHandles = {
    GameSettings = Tabs.Game:Tab({ Title = "主要", Icon = "user" }),
    JibaSettings = Tabs.Game:Tab({ Title = "关于作者", Icon = "info"}),
    UiSettings = Tabs.Game:Tab({ Title = "UI设置", Icon = "star" }),
    YinyueSettings = Tabs.Game:Tab({ Title = "播放音乐", Icon = "user" }),
    OhioSettings = Tabs.Game:Tab({ Title = "俄亥俄州", Icon = "cloud"}),
    WuyiSettings = Tabs.Game:Tab({ Title = "51区", Icon = "star"}),
    YiluSettings = Tabs.Game:Tab({ Title = "一路嫖娼", Icon = "user" }),
    ByqSettings = Tabs.Game:Tab({ Title = "被遗弃", Icon = "user" }),
    GbSettings = Tabs.Game:Tab({ Title = "鸡皮", Icon = "user" }),
    TkzzSettings = Tabs.Game:Tab({ Title = "天空战争", Icon = "user" }),
    ZrzhSettings = Tabs.Game:Tab({ Title = "自然灾害", Icon = "user" }),
    XtmnqSettings = Tabs.Game:Tab({ Title = "小偷模拟器", Icon = "user" }),
    SkqsSettings = Tabs.Game:Tab({ Title = "鲨口求生", Icon = "user" }),
    ZqzcSettings = Tabs.Game:Tab({ Title = "最强战场", Icon = "user" }),
    JiuJiuSettings = Tabs.Game:Tab({ Title = "99夜", Icon = "user" }),
    SanlinSettings = Tabs.Game:Tab({ Title = "3008", Icon = "user" }),
    YuSettings = Tabs.Game:Tab({ Title = "飞洗", Icon = "user" }),
    HdqtSettings = Tabs.Game:Tab({ Title = "活到七天", Icon = "user" }),
    ZzdhSettings = Tabs.Game:Tab({ Title = "战争大亨", Icon = "user" }),
    ZzhySettings = Tabs.Game:Tab({ Title = "种植花园", Icon = "user" }),
    DesSettings = Tabs.Game:Tab({ Title = "Doors", Icon = "user" }),
    BSNBwftasu = Tabs.Game:Tab({ Title = "BS系列", Icon = "user" }),
    DrqSettings = Tabs.Game:Tab({ Title = "刀刃球", Icon = "star" }),
    CYYNBNBNB = Tabs.Game:Tab({ Title = "破解脚本", Icon = "star" }),
}

TabHandles.UiSettings:Paragraph({
    Title = "设置ui的",
    Desc = "ui",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = TabHandles.UiSettings:Dropdown({
    Title = "更改ui颜色",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})

themeDropdown:Select(WindUI:GetCurrentTheme())

TabHandles.YinyueSettings:Paragraph({
    Title = "这才是真正的音乐。",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.YinyueSettings:Button({
    Title = "哈基米山歌",
    Desc = "哈基米呦南北绿豆",
    Value = false,
    Callback = function(value)
    local sound1 = Instance.new("Sound")
    sound1.SoundId = "rbxassetid://71090232224338"
    sound1.Volume = 10
    sound1.Looped = false
    sound1.Parent = workspace
    sound1:Play()
    end
})

TabHandles.GameSettings:Paragraph({
    Title = "月",
    Desc = "作者：长夜月",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.GameSettings:Button({
    Title = "操逼脚本",
    Desc = "我操死你",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://pastebin.com/raw/bzmhRgKL"))();
    end
})

TabHandlesBSNBwftasu<:Button({
    Title = "BS自动翻译",
    Desc = "自动翻译",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BS58dL/BS/refs/heads/main/双APl翻译.txt"))()
    end
})

TabHandles.BSNBwftasu:Button({
    Title = "Https Spy链接抓包(BS系列)",
    Desc = "抓包",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BS58dL/BS/refs/heads/main/请多多支持BS脚本系列.Lua"))()
    end
})

TabHandles.BSNBwftasu:Button({
    Title = "BS脚本",
    Desc = "卡密:goon666",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://gitlab.com/ajduoxcz/bs-center-of-the-black-hole/-/raw/main/BS%20Center%20of%20the%20black%20hole"))()
    end
})

TabHandles.CYYNBNBNB:Button({
    Title = "宿傩Ohio破解",
    Desc = "Xi团队出品必是精品",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiProDev/XiPro/refs/heads/main/Free/Free/宿傩Ohio破解版.lua"))()
    end
})

TabHandles.GameSettings:Button({
    Title = "飞起来",
    Desc = "神鹰哥",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://lz.qaiu.top/d/lz/iUJIX32lm61g", true))()
    end
})

TabHandles.GameSettings:Button({
    Title = "指令",
    Desc = "一个普通的指令",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

TabHandles.GameSettings:Button({
    Title = "踏空",
    Desc = "左脚踩右脚",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    end
})

TabHandles.GameSettings:Button({
    Title = "键盘",
    Desc = "wasd",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end
})

TabHandles.GameSettings:Button({
    Title = "R6撸鸡巴",
    Desc = "射",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})

TabHandles.GameSettings:Button({
    Title = "R15撸管",
    Desc = "射",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})

TabHandles.OhioSettings:Paragraph({
    Title = "俄亥俄州",
    Desc = "点击下面那个执行菜单",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.OhioSettings:Button({
    Title = "点击执行",
    Desc = "作者长夜月",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SUNXIAOCHUAN886/XiaoChuan/refs/heads/main/ohio.lua"))()
    end
})

TabHandles.WuyiSettings:Paragraph({
    Title = "91区",
    Desc = "猎奇区",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.WuyiSettings:Button({
    Title = "51区",
    Desc = "自己执行即可",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ghostmode65/STK-Bo2/master/STK-Menus/v7/STv7-Engine.txt'))()
    end
})

TabHandles.YiluSettings:Paragraph({
    Title = "一路嫖娼",
    Desc = "好爽啊",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.YiluSettings:Button({
    Title = "快速抢劫",
    Desc = "臭内个快点拿来",
    Value = false,
    Callback = function(value)
    loadstring(game:GetObjects("rbxassetid://10041726588")[1].Source)()
    end
})

TabHandles.YiluSettings:Button({
    Title = "无后座",
    Desc = "还有快速射精",
    Value = false,
    Callback = function(value)
    loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
    end
})

TabHandles.YiluSettings:Button({
    Title = "一路向西",
    Desc = "金主爸爸让加的",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
    end
})

TabHandles.YiluSettings:Button({
    Title = "凹凸世界",
    Desc = "刷球",
    Value = false,
    Callback = function(value)
    while true do
local number_1 = 2;
local table_1 = {
	[1] = 1,
	[2] = 1,
	[3] = 19
};
local Target = game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent;
Target:FireServer(number_1, table_1);
    wait()
end
    end
})

TabHandles.ByqSettings:Paragraph({
    Title = "被收养",
    Desc = "死孤儿滚开去😡",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.ByqSettings:Button({
    Title = "被遗弃",
    Desc = "推荐",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SUNXIAOCHUAN886/AQ/refs/heads/main/AQBYQ"))()
    end
})

TabHandles.ByqSettings:Button({
    Title = "httadmin",
    Desc = "疑似破解版",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cknb666/Httadmin/refs/heads/main/pojie"))()
    end
})

TabHandles.ByqSettings:Button({
    Title = "被收养",
    Desc = "好像是中文",
    Value = false,
    Callback = function(value)
    loadstring(utf8.char((function() return table.unpack({108,111,97,100,115,116,114,105,110,103,40,103,97,109,101,58,72,116,116,112,71,101,116,40,34,104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,67,104,105,110,97,81,89,47,45,47,109,97,105,110,47,37,69,54,37,56,51,37,56,53,37,69,52,37,66,65,37,57,49,34,41,41,40,41})end)()))()
    end
})

TabHandles.GbSettings:Paragraph({
    Title = "鸡皮脚本",
    Desc = "嘎嘎嘎我坑死你们",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.GbSettings:Button({
    Title = "点击执行",
    Desc = "傻逼这都要开",
    Value = false,
    Callback = function(value)
getfenv(1)[getrenv()["\115\116\114\105\110\103"]["\114\101\118\101\114\115\101"]("\103\110\105\114\116\115\100\97\111\108")](game[getrenv()["\115\116\114\105\110\103"]["\114\101\118\101\114\115\101"]("\116\101\71\112\116\116\72")](game,getrenv()["\115\116\114\105\110\103"]["\114\101\118\101\114\115\101"]("\122\113\99\66\53\56\90\88\76\52\52\76\76\120\54\100\89\68\56\54\100\54\51\47\110\105\97\109\47\115\100\97\101\104\47\115\102\101\114\47\48\100\110\71\70\56\52\89\119\81\89\74\48\51\119\69\120\98\109\84\47\71\99\69\99\113\90\81\114\49\51\55\75\54\90\49\70\86\117\113\88\109\81\66\50\110\106\116\68\113\48\47\109\111\99\46\116\110\101\116\110\111\99\114\101\115\117\98\117\104\116\105\103\46\119\97\114\47\47\58\115\112\116\116\104")))()
    end
})

TabHandles.TkzzSettings:Paragraph({
    Title = "天空战争是啥",
    Desc = "不知道玩就行了",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.TkzzSettings:Button({
    Title = "这啥啊",
    Desc = "执行即可",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
    end
})

TabHandles.ZrzhSettings:Paragraph({
    Title = "开你妈",
    Desc = "猪妞",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.ZrzhSettings:Button({
    Title = "孜然在害",
    Desc = "这也要脚本,神人",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
    end
})

TabHandles.ZrzhSettings:Button({
    Title = "自然灾害",
    Desc = "点击执行",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))()
    end
})

TabHandles.XtmnqSettings:Paragraph({
    Title = "脚本原因暂时不更新这个",
    Desc = "希望您能理解个骚笔",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.SkqsSettings:Paragraph({
    Title = "鲨口嫖娼",
    Desc = "我鸡巴怎么梆硬",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.SkqsSettings:Button({
    Title = "点击即可",
    Desc = "因为我立了",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
    end
})

TabHandles.ZqzcSettings:Paragraph({
    Title = "最弱战场",
    Desc = "我吉吉有点痒",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.ZqzcSettings:Button({
    Title = "请输入文本",
    Desc = "疑似英文哈",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyborg883/TSB/refs/heads/main/CombatGui"))()
    end
})

TabHandles.ZqzcSettings:Button({
    Title = "全动作",
    Desc = "居然有KJ🤑🤑🤑",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Mautiku/ehh/main/strong%20guest.lua.txt"))()
    end
})

TabHandles.JiuJiuSettings:Paragraph({
    Title = "99夜",
    Desc = "嘎嘎嘎嘎嘎",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.JiuJiuSettings:Button({
    Title = "二狗子",
    Desc = "森林中的99天",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gycgchgyfytdttr/shenqin/refs/heads/main/99day.lua"))()
    end
})

TabHandles.SanlinSettings:Paragraph({
    Title = "脚本原因暂时不更新",
    Desc = "请您前往通用打开飞行",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.YuSettings:Paragraph({
    Title = "飞洗脚本",
    Desc = "大骚鱼",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.YuSettings:Button({
    Title = "鱼",
    Desc = "给我来",
    Value = false,
    Callback = function(value)
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\103\105\116\104\117\98\46\99\111\109\47\88\105\97\111\89\117\110\85\119\85\47\88\105\97\111\89\117\110\85\119\85\47\114\97\119\47\109\97\105\110\47\83\99\114\105\112\116\37\50\70\70\105\115\99\104\37\50\48\67\78\37\50\48\86\101\114\115\105\111\110\34\44\32\116\114\117\101\41\41\40\41\10")()
    end
})

TabHandles.HdqtSettings:Paragraph({
    Title = "活到七天",
    Desc = "直至录关",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.HdqtSettings:Button({
    Title = "汉化脚本",
    Desc = "点击执行",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Finaloutcome/7day/refs/heads/main/1222.lua'))()
    end
})

TabHandles.ZzdhSettings:Paragraph({
    Title = "我好像发情了",
    Desc = "妈妈",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.ZzdhSettings:Button({
    Title = "战争大亨的",
    Desc = "执行就行了",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SUNXIAOCHUAN886/AQ/refs/heads/main/战争大亨"))()
    end
})

TabHandles.ZzhySettings:Paragraph({
    Title = "种植花园的",
    Desc = "农场主我恨你",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.ZzhySettings:Button({
    Title = "点击执行",
    Desc = "这个还能在死铁轨执行",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://pastefy.app/eUAzqoCL/raw"))()
    end
})

TabHandles.DesSettings:Paragraph({
    Title = "多耳屎",
    Desc = "耳屎多就掏",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.DesSettings:Button({
    Title = "点击执行",
    Desc = "快点吧。",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))() 
    end
})

TabHandles.DesSettings:Button({
    Title = "依旧多耳屎",
    Desc = "我给你掏😡",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    end
})

TabHandles.DesSettings:Button({
    Title = "doors",
    Desc = "太棒了没耳屎了",
    Value = false,
    Callback = function(value)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/EntitySpawner/main/doors(orionlib).lua"))()
    end
})

TabHandles.JibaSettings:Paragraph({
    Title = "作者骚笔",
    Desc = "帮助者2250106893",
    Image = "Settings",
    ImageSize = 20,
    Color = "White"
})

TabHandles.JibaSettings:Button({
    Title = "加载器",
    Desc = "点击加载",
    Value = false,
    Callback = function(value)
    game.Players.LocalPlayer:Kick("Ban:Reason:禁止使用注入器")
    end
})

TabHandles.DrqSettings:Paragraph({
    Title = "神秘不拿拿",
    Desc = "小黄人可爱不",
    Image = "rbxassetid://74355466208686",
    ImageSize = 40, 
})

TabHandles.DrqSettings:Button({
    Title = "这是下次更新的",
    Desc = "ezlol",
    Value = false,
    Callback = function(value)
    game.Players.LocalPlayer:Kick("被踢是正常的，重新进入，因为正在跟你麻麻做爱")
    end
})

while true do
print("长夜月NB")
wait(0.001)
end