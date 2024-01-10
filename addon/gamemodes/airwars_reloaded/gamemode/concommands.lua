concommand.Add("awr_set_time",
	function(Player, Command, Args, ArgString)
		if IsValid(Player) and Player:IsAdmin() then
			AirWars:SetTimeLeft(util.StringToType( Args[1], "int" ))		
		end
	end
)

concommand.Add("awr_developer",
	function(Player, Command, Args, ArgString)
		if IsValid(Player) and Player:IsAdmin() then
			if Args[1] == "1" then
				aw_developer = true
			elseif Args[1] == "0" then
				aw_developer = false
			else
				print("aw_developer is set to: " .. tostring(aw_developer))
			end
		end
	end
)

concommand.Add("awr_resetround",
	function(Player, Command, Args, ArgString)
		if IsValid(Player) and Player:IsAdmin() then
			AirWars:ResetRound()
		end
	end
)
