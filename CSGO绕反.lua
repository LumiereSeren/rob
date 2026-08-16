local function HardenedAntiBAC()
    if game:GetService("RunService"):IsStudio() then return end
    local function findACModule()
        for _, mod in ipairs(getloadedmodules()) do
            if type(mod) == "table" and mod.Name then
                local name = mod.Name or ""
                if name:match("Anti") or name:match("BAC") or name:match("Cheat") then
                    return mod
                end
                local ok, func = pcall(require, mod)
                if ok and type(func) == "function" then
                    local i = 1
                    while true do
                        local k, v = debug.getupvalue(func, i)
                        if not k then break end
                        if type(v) == "function" and debug.getinfo(v).name == "Check" then
                            return mod
                        end
                        i = i + 1
                    end
                end
            end
        end
        return nil
    end
    local oldRequire = require
    require = function(module)
        if type(module) == "string" and module:find("Anti") then
            return function() return true end
        end
        return oldRequire(module)
    end
    local HttpService = game:GetService("HttpService")
    local methods = {"Get", "GetAsync", "Post", "PostAsync", "Request", "RequestAsync"}
    for _, method in ipairs(methods) do
        if HttpService[method] then
            local original = HttpService[method]
            HttpService[method] = function(self, ...)
                local args = {...}
                local url = args[1]
                if type(url) == "string" and (url:find("ban") or url:find("report") or url:find("analytics")) then
                    return "{}"
                end
                return original(self, ...)
            end
        end
    end
    local function hideSelf()
        local ourScript = script
        if ourScript then ourScript:Destroy() end
        local env = getfenv(1)
        for k, v in pairs(env) do
            if type(v) == "function" and debug.getinfo(v).source == "@Aero csgo.lua" then
                env[k] = nil
            end
        end
    end
    pcall(hideSelf)
    local old_getgc = getgc
    getgc = function(opt)
        return {}
    end
    local old_getreg = getreg
    getreg = function()
        return setmetatable({}, { __index = function() return nil end })
    end
    local old_getfenv = getfenv
    getfenv = function(index)
        if index == 0 then return old_getfenv(index) end
        return setmetatable({}, { __index = function() return nil end })
    end
    local old_getupvalue = debug.getupvalue
    debug.getupvalue = function(func, idx)
        if func and type(func) == "function" and debug.getinfo(func).source:find("AntiBAC") then
            return nil
        end
        return old_getupvalue(func, idx)
    end
    local old_setupvalue = debug.setupvalue
    debug.setupvalue = function(func, idx, val)
        if func and type(func) == "function" and debug.getinfo(func).source:find("AntiBAC") then
            return nil
        end
        return old_setupvalue(func, idx, val)
    end
    local function disableTeleport()
        local ts = game:GetService("TeleportService")
        if ts then
            local oldTeleport = ts.Teleport
            ts.Teleport = function(...) return end
            ts.TeleportToPrivateServer = function(...) return end
        end
    end
    pcall(disableTeleport)
    local function disableRemoteEvents()
        for _, v in ipairs(game:GetDescendants()) do
            if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
                if v.Name:find("Anti") or v.Name:find("Ban") or v.Name:find("Report") then
                    v.OnServerEvent:Connect(function() return end)
                    pcall(function() v:Destroy() end)
                end
            end
        end
    end
    pcall(disableRemoteEvents)
    local function disruptHeartbeat()
        local rs = game:GetService("RunService")
        local oldStepped = rs.Stepped
        rs.Stepped = function() return end
        rs.Heartbeat = function() return end
        rs.RenderStepped = function() return end
    end
    pcall(disruptHeartbeat)
    task.spawn(function()
        while task.wait(20) do
            pcall(function()
                collectgarbage("collect")
                local lp = game.Players.LocalPlayer
                if lp and lp.Character then
                    lp.Character:SetAttribute("_script", nil)
                    lp.Character:SetAttribute("Bypass", nil)
                end
                for _, v in pairs(game:GetDescendants()) do
                    if v:IsA("StringValue") and v.Name:find("Anti") then
                        v:Destroy()
                    end
                end
            end)
        end
    end)
    print("[Hardened AntiBAC] Loaded")
end