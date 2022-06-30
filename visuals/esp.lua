getgenv().esp = loadstring(game:HttpGet('https://raw.githubusercontent.com/3xq/indigo/main/libraries/esp.lua'))()

getgenv().ghosts = game.Workspace.Players['Bright orange']
getgenv().phantoms = game.Workspace.Players['Bright blue']

esp.Boxes = false
esp.Names = false

esp:AddObjectListener(ghosts, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(255, 165, 0),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "ghosts"
})

esp:AddObjectListener(phantoms, {
  Recursive = true,
  Type = "Model",
  CustomName = " ",
  Color = Color3.fromRGB(0, 0, 233),
      Validator = function(obj)
      return obj:FindFirstChild("Torso")
  end,
  IsEnabled = "phantoms"
})

esp.ghosts = false
esp.phantoms = false 
