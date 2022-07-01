local developer_console = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog

for _, object in ipairs(developer_console:GetChidlren()) do
	if object:FindFirstChild('msg') then
		object:WaitForChild('msg').TextColor3 = Color3.fromRGB(6, 57, 112)
	end
end