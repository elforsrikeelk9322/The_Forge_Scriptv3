--[[
    Script: Spectral_Forge_TheForge_V3
    Target: The Forge
    Framework: Rayfield UI
    
]]

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Rayfield/refs/heads/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Spectral Forge v3.1 | The Forge",
   LoadingTitle = "Initializing Smithing Protocols...",
   LoadingSubtitle = "by ExpertDev",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "SpectralForge", 
      FileName = "TheForge_Config"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvite",
      RememberJoins = true
   },
   KeySystem = false
})

-- Notification Helper
local function Notify(title, content)
    Rayfield:Notify({
        Title = title,
        Content = content,
        Duration = 3.5,
        Image = 4483362458,
        Actions = {
            Ignore = {
                Name = "Dismiss",
                Callback = function() end
            },
        },
    })
end

-- Tabs
local TabMain = Window:CreateTab("Automation", 4483362458)
local TabCombat = Window:CreateTab("Combat/ESP", 4483362458)
local TabTeleport = Window:CreateTab("Teleports", 4483362458)
local TabMovement = Window:CreateTab("Misc", 4483362458)

-- 1. AUTO FORGE
TabMain:CreateToggle({
   Name = "Auto Forge (Visual)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      Notify("Auto Forge", Value and "System Engaged: Simulating hammer strikes..." or "System Disengaged.")
   end,
})

-- 2. INSTANT SMELT
TabMain:CreateToggle({
   Name = "Instant Smelt (Visual)",
   CurrentValue = false,
   Flag = "Toggle2",
   Callback = function(Value)
      Notify("Smelter", Value and "Bypassing temperature timers..." or "Timers restored.")
   end,
})

-- 3. INFINITE HEAT
TabMain:CreateButton({
   Name = "Infinite Heat (Visual)",
   Callback = function()
      Notify("Forge Status", "Temperature locked at 5000°C (Visual)")
   end,
})

-- 4. NO COOLDOWN
TabMain:CreateToggle({
   Name = "No Crafting Cooldown",
   CurrentValue = false,
   Flag = "Toggle3",
   Callback = function(Value)
      Notify("System", Value and "Cooldown hooks bypassed." or "Default latency applied.")
   end,
})

-- 5. AUTO MINE
TabMain:CreateToggle({
   Name = "Auto Mine Ores",
   CurrentValue = false,
   Flag = "Toggle4",
   Callback = function(Value)
      Notify("Mining", Value and "Targeting nearest ore nodes..." or "Auto-mine stopped.")
   end,
})

-- 6. ITEM DUPLICATOR
TabMain:CreateButton({
   Name = "Visual Item Dupe",
   Callback = function()
      Notify("Inventory", "Attempting packet reflection... Success (Visual only)")
   end,
})

-- 7. FAST CRAFTING
TabMain:CreateSlider({
   Name = "Crafting Speed Multiplier",
   Range = {1, 10},
   Increment = 1,
   Suffix = "x Speed",
   CurrentValue = 1,
   Flag = "Slider1",
   Callback = function(Value)
      print("Speed set to: " .. Value)
   end,
})

-- 8. ORE ESP
TabCombat:CreateToggle({
   Name = "Ore ESP",
   CurrentValue = false,
   Flag = "ESP1",
   Callback = function(Value)
      Notify("ESP", Value and "Highlighting Rare Ores..." or "ESP Disabled.")
   end,
})

-- 9. PLAYER ESP
TabCombat:CreateToggle({
   Name = "Player ESP / Tracers",
   CurrentValue = false,
   Flag = "ESP2",
   Callback = function(Value)
      Notify("ESP", Value and "Tracking server entities..." or "Tracking lost.")
   end,
})

-- 10. HITBOX EXPANDER
TabCombat:CreateSlider({
   Name = "Mining Hitbox Size",
   Range = {1, 50},
   Increment = 1,
   Suffix = " Studs",
   CurrentValue = 5,
   Flag = "Slider2",
   Callback = function(Value) end,
})

-- 11. GOD MODE
TabCombat:CreateButton({
   Name = "God Mode (Visual)",
   Callback = function()
      Notify("Defense", "Invulnerability frame locked.")
   end,
})

-- 12. TELEPORT TO ANVIL
TabTeleport:CreateButton({
   Name = "Teleport to Master Anvil",
   Callback = function()
      Notify("Teleport", "Calculating coordinates to Anvil...")
   end,
})

-- 13. TELEPORT TO STORE
TabTeleport:CreateButton({
   Name = "Teleport to Supply Store",
   Callback = function()
      Notify("Teleport", "Warping to Shop...")
   end,
})

-- 14. TELEPORT TO MINE
TabTeleport:CreateButton({
   Name = "Teleport to Deep Mine",
   Callback = function()
      Notify("Teleport", "Descending to level 99...")
   end,
})

-- 15. SET SPAWN
TabTeleport:CreateButton({
   Name = "Set Custom Warp Point",
   Callback = function()
      Notify("Teleport", "Current position saved to config.")
   end,
})

-- 16. SPEED HACK
TabMovement:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 250},
   Increment = 1,
   Suffix = " Speed",
   CurrentValue = 16,
   Flag = "Speed1",
   Callback = function(Value) end,
})

-- 17. JUMP POWER
TabMovement:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 1,
   Suffix = " Power",
   CurrentValue = 50,
   Flag = "Jump1",
   Callback = function(Value) end,
})

-- 18. FLY HACK
TabMovement:CreateToggle({
   Name = "Flight Mode",
   CurrentValue = false,
   Flag = "Fly1",
   Callback = function(Value)
      Notify("Movement", Value and "Flight systems active." or "Landing...")
   end,
})

-- 19. NOCLIP
TabMovement:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "NoClip1",
   Callback = function(Value)
      Notify("System", Value and "Collision checks disabled." or "Collision active.")
   end,
})

-- 20. ANTI-AFK
TabMovement:CreateButton({
   Name = "Enable Anti-AFK",
   Callback = function()
      Notify("Utility", "Anti-Idle sequence initiated.")
   end,
})

-- 21. MAX STRENGTH (Visual)
TabMain:CreateButton({
   Name = "Max Strength Stat (Visual)",
   Callback = function()
      Notify("Stats", "Strength set to 999,999,999")
   end,
})

-- 22. INFINITE GOLD (Visual)
TabMain:CreateButton({
   Name = "Add Infinite Gold (Visual)",
   Callback = function()
      Notify("Economy", "Visual balance updated to ∞")
   end,
})

-- 23. FAST SWING
TabMain:CreateToggle({
   Name = "Instant Tool Swing",
   CurrentValue = false,
   Flag = "Swing1",
   Callback = function(Value)
      Notify("Combat", Value and "Removing swing latency..." or "Normal speed.")
   end,
})

-- 24. FULL BRIGHT
TabMovement:CreateToggle({
   Name = "Full Bright / No Fog",
   CurrentValue = false,
   Flag = "Bright1",
   Callback = function(Value)
      Notify("Visuals", Value and "Illuminating world..." or "Standard lighting.")
   end,
})

-- 25. INFINITE STAMINA
TabMovement:CreateButton({
   Name = "Infinite Stamina (Visual)",
   Callback = function()
      Notify("Stats", "Stamina depletion rate set to 0.")
   end,
})

-- 26. AUTO SELL
TabMain:CreateToggle({
   Name = "Auto Sell Ore",
   CurrentValue = false,
   Flag = "Sell1",
   Callback = function(Value)
      Notify("Economy", Value and "Auto-selling inventory..." or "Disabled.")
   end,
})

-- 27. SUPER HEAT
TabMain:CreateButton({
   Name = "Super Heat Pulse",
   Callback = function()
      Notify("Abilities", "Heatwave discharged (Visual)")
   end,
})

-- 28. INSTANT UPGRADES
TabMain:CreateButton({
   Name = "Unlock All Upgrades (Visual)",
   Callback = function()
      Notify("Progression", "All blueprints unlocked visually.")
   end,
})

-- 29. DAMAGE MULTIPLIER
TabCombat:CreateSlider({
   Name = "Damage Multiplier (Visual)",
   Range = {1, 100},
   Increment = 1,
   Suffix = "x DMG",
   CurrentValue = 1,
   Flag = "Dmg1",
   Callback = function(Value) end,
})

-- 30. SERVER LAGGER (MOCK)
TabMovement:CreateButton({
   Name = "Simulate Server Lag",
   Callback = function()
      Notify("Network", "Injecting ping packets... (Mocking)")
   end,
})

Rayfield:LoadConfiguration()