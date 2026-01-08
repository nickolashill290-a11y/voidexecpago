local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "voidexec[beta] " .. Fluent.Version,
    SubTitle = "by voidexec [paid]",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local ScriptsBloxTab = Window:AddTab({ Title = "Scripts Blox Fruits", Icon = "terminal" })
local ScriptsBrainrotTab = Window:AddTab({ Title = "ScriptsBrainrot", Icon = "terminal" })
local SobreOsScriptsTab = Window:AddTab({ Title = "Sobre Os Scripts", Icon = "terminal" })
local InfoTab = Window:AddTab({ Title = "Info", Icon = "info" })
local SettingsTab = Window:AddTab({ Title = "Settings", Icon = "settings" })

ScriptsBrainrotTab:AddButton({
    Title = "Executar lennon hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/MJw2J4T6/raw"))()
    end
})

ScriptsBrainrotTab:AddButton({
    Title = "Executar miranda",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/JJVhs3rK/raw"))()
    end
})

InfoTab:AddParagraph({
    Title = "Aviso",
    Content = "Não nos responsabilizamos por banimentos."
})

InfoTab:AddParagraph({
    Title = "Nossa comunidade",
    Content = "https://discord.gg/F2NXMVZ3VE"
})

SobreOsScriptsTab:AddParagraph({
    Title = "Aviso",
    Content = "Se faltar algum script, entre no servidor que está na aba Info, abra um ticket e envie o link do script para ser adicionado."
})

SettingsTab:AddToggle({
    Title = "Toggle Teste",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

SettingsTab:AddSlider({
    Title = "Slider Teste",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(Value)
        print(Value)
    end
})

SettingsTab:AddInput({
    Title = "Input Teste",
    Placeholder = "Digite algo",
    Callback = function(Value)
        print(Value)
    end
})

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(SettingsTab)
SaveManager:BuildConfigSection(SettingsTab)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "O script foi carregado.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
