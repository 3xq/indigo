getgenv().chams = {}

local function cham(model)
    local highlight = Instance.new('Highlight', model)
    highlight.Enabled = false
  
    highlight.FillColor = Color3.fromRGB(11, 78, 150)
    highlight.FillTransparency = 0.3
    
    highlight.OutlineColor = Color3.fromRGB(200, 200, 200)
    highlight.OutlineTransparency = 0.3
    highlight.DepthMode = 0
    
    table.insert(highlights, highlight)

    return highlight
end

-- initiate chams

getgenv().update_chams = function()
    for _, character in ipairs(characters) do
        cham(character)
    end
end

update_chams()
