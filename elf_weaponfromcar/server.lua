
--	made by ELF#0001			--
--	3dme made by Elio			--
--								--
--	TOS							--
--	do not change resurce name	--
--	like why woud you			--
--								--
--  if you dont agree			--
--	set Tos to false			--

Tos = true

local logEnabled = false

RegisterServerEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text)
	TriggerClientEvent('3dme:triggerDisplay', -1, text, source)
	if logEnabled then
		setLog(text, source)
	end
end)

if GetCurrentResourceName() ~= "elf_weaponfromcar" then
	TriggerClientEvent('32stop', -1)
end

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
end

if GetCurrentResourceName() ~= "elf_weaponfromcar" then
	print("                                             #")
	print("                                             ###")
	print("###### ###### ###### ###### ######  ##############")
	print("#      #    # #    # #    # #    #  ################    Rename '" .. GetCurrentResourceName() .. "' back to 'elf_weaponfromcar'")
	print("###    ###### ###### #    # ######  ##################  otherwise the Server won't work properly!")
	print("#      # ##   # ##   #    # # ##    ################    you ar breaking TOS!")
	print("###### #   ## #   ## ###### #   ##  ##############")
	print("                                             ###")
	print("                                             #")
end