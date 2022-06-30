local script_details = {
    debug = false,
    version = "1.0.0",
}

local url = "https://raw.githubusercontent.com/3xq/indigo/main"

local function import(file)
    warn("[indigo - debug]: importing file " .. file)

    local x, a = pcall(function()
        return loadstring(game:HttpGet(url .. file))()
    end)
    
    if not x then
        return warn('failed to import', file)
    end
end

getgenv().import = import
getgenv().details = scriptdetails

import('/main.lua')
