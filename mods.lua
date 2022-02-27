MODS = {
    [1860025727] = true; 
    [1094496852] = true;
}

ADMIN = {
    [8] = true; -- 
    [324778090] = true; -- 
}

function initiateNames()
	game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
	for _,v in pairs(game:GetService('Players'):GetPlayers()) do
		if v.Character then
			if MODS[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			elseif ADMIN[v.UserId] then
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			else
			v.Character.UpperTorso:FindFirstChild('OriginalSize')
				v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🔥] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
			end
		
		end
	end
end

local successful, errored = pcall(initiateNames)
return MODS
