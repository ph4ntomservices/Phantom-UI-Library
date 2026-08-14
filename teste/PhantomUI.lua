--[[
    PHANTOM UI
    TESTE VISUAL
    Black + Neon Purple

    Logo:
    133244419649037

    Esta versão contém somente a UI.
    Nenhuma função de gameplay está incluída.
]]

local LibraryUrl = "https://raw.githubusercontent.com/Vovabro46/trash/refs/heads/main/Test.lua"

local Success, Library = pcall(function()
    return loadstring(game:HttpGet(LibraryUrl))()
end)

if not Success or not Library then
    return warn("[PHANTOM UI] Erro ao carregar a biblioteca.")
end

--==================================================
-- CONFIGURAÇÃO PHANTOM
--==================================================

local Logo = "rbxassetid://133244419649037"

local Theme = {
    Background = Color3.fromRGB(7, 5, 10),
    Sidebar = Color3.fromRGB(12, 7, 18),
    Groupbox = Color3.fromRGB(17, 9, 24),
    Accent = Color3.fromRGB(190, 0, 255),
    Text = Color3.fromRGB(255, 255, 255),
    TextDark = Color3.fromRGB(190, 170, 200),
    Outline = Color3.fromRGB(110, 0, 150)
}

--==================================================
-- TEMA
--==================================================

pcall(function()
    Library:UpdateTheme("Background", Theme.Background)
    Library:UpdateTheme("Sidebar", Theme.Sidebar)
    Library:UpdateTheme("Groupbox", Theme.Groupbox)
    Library:UpdateTheme("Accent", Theme.Accent)
    Library:UpdateTheme("Text", Theme.Text)
    Library:UpdateTheme("TextDark", Theme.TextDark)
    Library:UpdateTheme("Outline", Theme.Outline)
end)

--==================================================
-- WATERMARK
--==================================================

Library:Watermark("PHANTOM | v1.0")

--==================================================
-- WINDOW
--==================================================

local Window = Library:Window("PHANTOM")

--==================================================
-- SIDEBAR
--==================================================

Window:Section("PHANTOM")

local MainTab = Window:Tab("Main", "home")
local CombatTab = Window:Tab("Combat", "swords")
local VisualTab = Window:Tab("Visual", "eye")
local PlayerTab = Window:Tab("Player", "user")
local MiscTab = Window:Tab("Misc", "box")
local SettingsTab = Window:Tab("Settings", "settings")

--==================================================
-- MAIN
--==================================================

local MainPage = MainTab:SubTab("General")

local MainLeft = MainPage:Groupbox(
    "PHANTOM",
    "Left",
    "home",
    "true"
)

local MainRight = MainPage:Groupbox(
    "Information",
    "Right",
    "info",
    "true"
)

MainLeft:AddImage({
    Image = Logo,
    Size = UDim2.new(0, 100, 0, 100),
    Description = "PHANTOM Logo"
})

MainLeft:AddLabel("PHANTOM UI")

MainLeft:AddParagraph({
    Title = "Welcome",
    Content = "PHANTOM UI — Black and Neon Purple.",
    TextWrapped = true
})

MainLeft:AddSeparator()

MainLeft:AddToggle({
    Title = "Test Toggle",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] Test Toggle:", Value)
    end
})

MainLeft:AddButton({
    Title = "Test Button",
    Callback = function()
        Library:Notify(
            "PHANTOM",
            "Button funcionando!",
            2
        )
    end
})

MainRight:AddLabelText(
    "Name:",
    game.Players.LocalPlayer.Name
)

MainRight:AddLabelText(
    "Display:",
    game.Players.LocalPlayer.DisplayName
)

MainRight:AddLabelText(
    "Version:",
    "1.0"
)

MainRight:AddLabelText(
    "Theme:",
    "Neon Purple"
)

--==================================================
-- COMBAT
--==================================================

local CombatPage = CombatTab:SubTab("Combat")

local CombatLeft = CombatPage:Groupbox(
    "Combat",
    "Left",
    "swords",
    "true"
)

local CombatRight = CombatPage:Groupbox(
    "Settings",
    "Right",
    "settings",
    "true"
)

CombatLeft:AddToggle({
    Title = "Test Toggle",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] Combat Toggle:", Value)
    end
})

CombatLeft:AddToggle({
    Title = "Second Toggle",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] Second Toggle:", Value)
    end
})

CombatLeft:AddButton({
    Title = "Test Action",
    Callback = function()
        Library:Notify(
            "Combat",
            "Test action executed.",
            2
        )
    end
})

CombatRight:AddSlider({
    Title = "Distance",
    Min = 1,
    Max = 100,
    Default = 25,
    Rounding = 0,
    Suffix = " studs",
    Callback = function(Value)
        print("[PHANTOM] Distance:", Value)
    end
})

CombatRight:AddDropdown({
    Title = "Mode",
    Values = {
        "Nearest",
        "Lowest HP",
        "Mouse"
    },
    Default = "Nearest",
    Multi = false,
    Callback = function(Value)
        print("[PHANTOM] Mode:", Value)
    end
})

CombatRight:AddKeybind({
    Title = "Test Keybind",
    Default = Enum.KeyCode.RightShift,
    Callback = function(Key)
        print("[PHANTOM] Keybind:", Key)
    end
})

--==================================================
-- VISUAL
--==================================================

local VisualPage = VisualTab:SubTab("Visuals")

local VisualLeft = VisualPage:Groupbox(
    "Visual",
    "Left",
    "eye",
    "true"
)

local VisualRight = VisualPage:Groupbox(
    "Colors",
    "Right",
    "palette",
    "true"
)

VisualLeft:AddToggle({
    Title = "ESP Test",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] ESP:", Value)
    end
})

VisualLeft:AddToggle({
    Title = "Tracers Test",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] Tracers:", Value)
    end
})

VisualLeft:AddCheckbox({
    Title = "Highlight",
    Default = false,
    Callback = function(Value)
        print("[PHANTOM] Highlight:", Value)
    end
})

VisualRight:AddColorPicker({
    Title = "Accent Color",
    Default = Theme.Accent,
    Transparency = 0,
    Flag = "TestColor",
    Callback = function(Color, Alpha)
        print("[PHANTOM] Color changed:", Color, Alpha)
    end
})

VisualRight:AddColorPicker({
    Title = "Second Color",
    Default = Color3.fromRGB(120, 0, 180),
    Transparency = 0,
    Flag = "TestColor2",
    Callback = function(Color, Alpha)
        print("[PHANTOM] Second color:", Color, Alpha)
    end
})

--==================================================
-- PLAYER
--==================================================

local PlayerPage = PlayerTab:SubTab("Player")

local PlayerLeft = PlayerPage:Groupbox(
    "Movement",
    "Left",
    "move",
    "true"
)

local PlayerRight = PlayerPage:Groupbox(
    "Player",
    "Right",
    "user",
    "true"
)

PlayerLeft:AddSlider({
    Title = "WalkSpeed",
    Min = 16,
    Max = 250,
    Default = 16,
    Rounding = 0,
    Suffix = " studs",
    Callback = function(Value)
        print("[PHANTOM] WalkSpeed:", Value)
    end
})

PlayerLeft:AddSlider({
    Title = "JumpPower",
    Min = 50,
    Max = 250,
    Default = 50,
    Rounding = 0,
    Callback = function(Value)
        print("[PHANTOM] JumpPower:", Value)
    end
})

PlayerRight:AddTextbox({
    Title = "Player Name",
    Placeholder = "Enter name...",
    ClearOnFocus = false,
    Callback = function(Value)
        print("[PHANTOM] Player:", Value)
    end
})

PlayerRight:AddButton({
    Title = "Test Notification",
    Callback = function()
        Library:Notify(
            "PHANTOM",
            "Notification funcionando!",
            3
        )
    end
})

--==================================================
-- MISC
--==================================================

local MiscPage = MiscTab:SubTab("Misc")

local MiscLeft = MiscPage:Groupbox(
    "Miscellaneous",
    "Left",
    "box",
    "true"
)

local MiscRight = MiscPage:Groupbox(
    "Information",
    "Right",
    "info",
    "true"
)

MiscLeft:AddCheckbox({
    Title = "Safe Mode",
    Default = true,
    Callback = function(Value)
        print("[PHANTOM] Safe Mode:", Value)
    end
})

MiscLeft:AddDropdown({
    Title = "Select Option",
    Values = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    Default = "Option 1",
    Callback = function(Value)
        print("[PHANTOM] Option:", Value)
    end
})

MiscLeft:AddTextbox({
    Title = "Text",
    Placeholder = "Type something...",
    Callback = function(Value)
        print("[PHANTOM] Text:", Value)
    end
})

MiscRight:AddParagraph({
    Title = "PHANTOM UI",
    Content = "Interface test version. All gameplay functions will be separated later.",
    TextWrapped = true
})

MiscRight:AddButton({
    Title = "Test Notification",
    Callback = function()
        Library:Notify(
            "PHANTOM",
            "Everything is working!",
            3
        )
    end
})

--==================================================
-- SETTINGS
--==================================================

local SettingsPage = SettingsTab:SubTab("Settings")

local ThemeGroup = SettingsPage:Groupbox(
    "Theme",
    "Left",
    "palette",
    "true"
)

local UIGroup = SettingsPage:Groupbox(
    "Interface",
    "Right",
    "settings",
    "true"
)

ThemeGroup:AddLabel("PHANTOM Theme")

ThemeGroup:AddColorPicker({
    Title = "Accent",
    Default = Theme.Accent,
    Transparency = 0,
    Flag = "ThemeAccent",
    Callback = function(Color)
        Library:UpdateTheme("Accent", Color)
    end
})

ThemeGroup:AddColorPicker({
    Title = "Background",
    Default = Theme.Background,
    Transparency = 0,
    Flag = "ThemeBackground",
    Callback = function(Color)
        Library:UpdateTheme("Background", Color)
    end
})

ThemeGroup:AddColorPicker({
    Title = "Sidebar",
    Default = Theme.Sidebar,
    Transparency = 0,
    Flag = "ThemeSidebar",
    Callback = function(Color)
        Library:UpdateTheme("Sidebar", Color)
    end
})

ThemeGroup:AddColorPicker({
    Title = "Groupbox",
    Default = Theme.Groupbox,
    Transparency = 0,
    Flag = "ThemeGroupbox",
    Callback = function(Color)
        Library:UpdateTheme("Groupbox", Color)
    end
})

ThemeGroup:AddButton({
    Title = "Reset Theme",
    Callback = function()

        Library:UpdateTheme(
            "Background",
            Theme.Background
        )

        Library:UpdateTheme(
            "Sidebar",
            Theme.Sidebar
        )

        Library:UpdateTheme(
            "Groupbox",
            Theme.Groupbox
        )

        Library:UpdateTheme(
            "Accent",
            Theme.Accent
        )

        Library:UpdateTheme(
            "Text",
            Theme.Text
        )

        Library:UpdateTheme(
            "TextDark",
            Theme.TextDark
        )

        Library:UpdateTheme(
            "Outline",
            Theme.Outline
        )

        Library:Notify(
            "PHANTOM",
            "Theme reset.",
            2
        )
    end
})

UIGroup:AddToggle({
    Title = "Show Watermark",
    Default = true,
    Flag = "Watermark",

    Callback = function(Value)

        if Library.WatermarkSettings then
            Library.WatermarkSettings.Enabled = Value
        end

    end
})

UIGroup:AddTextbox({
    Title = "Watermark Text",
    Default = "PHANTOM | v1.0",
    Placeholder = "Enter text...",
    ClearOnFocus = false,

    Callback = function(Value)

        if Library.WatermarkSettings then
            Library.WatermarkSettings.Text = Value
        end

    end
})

UIGroup:AddButton({
    Title = "Test Notification",
    Callback = function()

        Library:Notify(
            "PHANTOM",
            "UI is working correctly.",
            3
        )

    end
})

UIGroup:AddButton({
    Title = "Unload UI",
    Callback = function()

        local CoreGui = game:GetService("CoreGui")

        local Gui = CoreGui:FindFirstChild("RedOnyx")
        local Watermark = CoreGui:FindFirstChild("Watermark")

        if Gui then
            Gui:Destroy()
        end

        if Watermark then
            Watermark:Destroy()
        end

    end
})

--==================================================
-- FINAL
--==================================================

Library:Notify(
    "PHANTOM UI",
    "Loaded successfully.",
    3
)
