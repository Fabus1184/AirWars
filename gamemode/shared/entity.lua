local meta = FindMetaTable("Entity")


function meta:GetAmmoAmount()
	return self:GetNWInt("aw_ammo_amount", 0)
end

function meta:SetAmmoAmount(amount)
	return self:SetNWInt("aw_ammo_amount", amount or 0)
end

function meta:GetAWTeam()
	if CLIENT then
		print("GetAWTeamRaw: " .. self:GetAWTeamRaw)
		return (self.GetAWTeamRaw and self:GetAWTeamRaw()) or 0
	end
	return self.aw_team
end

function meta:SetAWTeam(team)
	self:SetAWTeamRaw(team)
	self.aw_team = team
end

function meta:GetCurrentShip()
	return self:GetAWTeam()
end
