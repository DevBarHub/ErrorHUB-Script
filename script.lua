local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Error HUB",
   Icon = 0, 
   LoadingTitle = "Loading...",
   LoadingSubtitle = "By DevBar",
   ShowText = "Error HUB",
   Theme = "Ocean",
   ToggleUIKeybind = "K", 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "SaveFile404"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true 
   },
   KeySystem = true,
   KeySettings = {
      Title = "Oops | Error HUB",
      Subtitle = "Key System",
      Note = "Check the code to find the key",
      FileName = "Key", 
      SaveKey = false, 
      GrabKeyFromSite = false,
      Key = {"WelcomeToErrorHUB", "ErrorHUB", "ErrorHUBIsBetter"} 
   }
})

local MainTab = Window:CreateTab("Universal", "code")
local MainTabSection1 = MainTab:CreateSection("Basic scripts")

local Slider1 = MainTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 300},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function(Value)
      if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
      end
   end,
})

local Button = MainTab:CreateButton({
   Name = "Reset Walk Speed",
   Callback = function()
      if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
         Slider1:Set(16)
         Rayfield:Notify({
            Title = "Oops | Error HUB",
            Content = "Success!!!",
            Duration = 6.5,
            Image = 4483362458
         })
      end
   end,
})
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"WelcomeToErrorHUB", "ErrorHUB", "ErrorHUBIsBetter"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local MainTab = Window:CreateTab("Universal", "code")

local MainTabSection1 = MainTab:CreateSection("Basic scripts")

local Slider1 = Tab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 300},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the slider changes
   -- The variable (Value) is a number that correlates to the value the slider is currently at
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Button = Tab:CreateButton({
   Name = "Reset Walk Speed",
   Callback = function()
   -- The function that takes place when the button is pressed
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            Slider1:Set(16) -- The new slider integer value
            Rayfield:Notify({
                    Title = "Oops | Error HUB",
                    Content = "Success!!!",
                    Duration = 6.5,
                    Image = "file"
                })
            })
   end,
})

