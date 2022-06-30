getgenv().esp = loadstring(game:HttpGet('https://raw.githubusercontent.com/3xq/indigo/main/libraries/esp.lua'))()

getgenv().ghosts = game.Workspace.Players['Bright orange']
getgenv().phantoms = game.Workspace.Players['Bright blue']

esp.Boxes = false
esp.Names = false

getgenv().ghosts_esp = esp:AddObjectListener(ghosts, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(150, 84, 8),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "ghosts"
})

getgenv().phantoms_esp = esp:AddObjectListener(phantoms, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(6, 57, 112),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "phantoms"
})

esp.ghosts = false
esp.phantoms = false 
