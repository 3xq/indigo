getgenv().chams = {
    ['enabled'] = false,
    ['ghosts'] = {['enabled']=false,['objects']={}},
    ['phantoms'] = {}
}

local function cham(model, color)
    local highlight = Instance.new('Highlight', model)
    highlight.Enabled = false
  
    highlight.FillColor = color
    highlight.FillTransparency = 0.3
    
    highlight.OutlineColor = Color3.fromRGB(200, 200, 200)
    highlight.OutlineTransparency = 0.3
    highlight.DepthMode = 0
    
    if model.Parent.Name == 'Bright blue' then
        table.insert(chams.phantoms.objects, model)
    else
        table.insert(chams.ghosts.objects, model)
    end

    return highlight
end

-- initiate chams

getgenv().update_chams = function()
    for _, character in ipairs(characters) do
        if character.Parent = 'Bright blue' then
        cham(character, Color3.fromRGB(13, 105, 172))
        else
        cham(character, Color3.fromRGB(218, 133, 65))
        end
    end
end

game:GetService("Workspace").Players["Bright blue"].ChildAdded:Connect(function(character)
    cham(character, Color3.fromRGB(13, 105, 172))
end)

game:GetService("Workspace").Players["Bright orange"].ChildAdded:Connect(function(character)
    cham(character, Color3.fromRGB(218, 133, 65))
end)

update_chams()
