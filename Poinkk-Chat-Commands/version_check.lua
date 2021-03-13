local label = 
[[ 
  //
  || 
  ||
  ||   ____           _           _  _    _  _     __                                                    _ 
  ||  |  _ \   ___   (_)  _ __   | |/ / | |/ /   / __|  ___   _ __ ___    _ __ ___    __ _   _ __     __| |
  ||  | |_) | / _ \  | | | '_ \  | / /  | / /   | |    / _ \ |  _   _ \  |  _   _ \  / _  | |  _  \  / _  |
  ||  |  __/ | (_) | | | | | | | | \ \  | \ \   | |__ | (_)| | | | | | | | | | | | || |_| | | | | | | (_| | 
  ||  |_|     \___/  |_| |_| |_| |_|\_\ |_|\_\   \___| \___/ |_| |_| |_| |_| |_| |_| \__ _| |_| |_|  \__ _|  
  ||                                                           
  ||
  ||                   Created by poinkk815#4094
  ||]]
  
Citizen.CreateThread(function()
	local CurrentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
	if not CurrentVersion then
		print('^1Poinkk-Roleplay-Chat-Commands Version Check Failed!^7')
	end

	function VersionCheckHTTPRequest()
		PerformHttpRequest('https://raw.githubusercontent.com/Poinkk815/Poinkk-Roleplay-Chat-Commands/main/Poinkk-Roleplay-Chat-Commands.json', VersionCheck, 'GET')
	end

	function VersionCheck(err, response, headers)
		Citizen.Wait(3000)
		if err == 200 then
			local Data = json.decode(response)
			if CurrentVersion ~= Data.NewestVersion then
				print( label )			
				print('  ||    \n  ||    Poinkk-Roleplay-Chat-Commands is outdated!')
				print('  ||    Current version: ^2' .. Data.NewestVersion .. '^7')
				print('  ||    Your version: ^1' .. CurrentVersion .. '^7')
				print('  ||    Please download the lastest version from ^5' .. Data.DownloadLocation .. '^7')
				if Data.Changes ~= '' then
					print('  ||    \n  ||    ^5Changes: ^7' .. Data.Changes .. "\n^0  \\\\\n")
				end
			else
				print( label )			
				print('  ||    ^Poinkk-Roleplay-Chat-Commands is up to date!\n^0  ||\n  \\\\\n')
			end
		else
			print( label )			
			print('  ||    ^1There was an error getting the latest version information, if the issue join my discord for support discord.gg/FXJYDkx2Hs.\n^0  ||\n  \\\\\n')
		end
		
		SetTimeout(60000000, VersionCheckHTTPRequest)
	end

	VersionCheckHTTPRequest()
end)
