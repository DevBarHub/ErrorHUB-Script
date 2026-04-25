local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Error HUB",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Loading...",
   LoadingSubtitle = "By DevBar",
   ShowText = "Error HUB", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Ocean", -- Check https://[Log in to view URL]

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SaveFile404"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Oops | Error HUB",
      Subtitle = "Key System",
      Note = "Check the code to find the key or on our Discord server (we don't have one)", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
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

