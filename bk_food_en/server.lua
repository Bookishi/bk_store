require "resources/essentialmode/lib/MySQL"
MySQL:open("127.0.0.1", "gta5_gamemode_essential", "USER", "PASSWORD")

RegisterServerEvent("cocasee")
AddEventHandler("cocasee", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 85) then
		TriggerClientEvent("Cocat", source)
		target:removeMoney(85)
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "Coke Can ~g~+1 !\n")
		else
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "~r~You don't have enought money !\n")
		end
	end)
end)

RegisterServerEvent("eaus")
AddEventHandler("eaus", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 100) then
		TriggerClientEvent("eau", source)
		target:removeMoney(100)
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "Water Bottle ~g~+1 !\n")
		else
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "~r~You don't have enought money !\n")
		end
	end)
end)

RegisterServerEvent("Sandwichs")
AddEventHandler("Sandwichs", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 85) then
		TriggerClientEvent("Sandwich", source)
		target:removeMoney(85)
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "Sandwich ~g~+1 !\n")
		else
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "~r~You don't have enought money !\n")
		end
	end)
end)

RegisterServerEvent("Hamburgers")
AddEventHandler("Hamburgers", function()
	TriggerEvent("es:getPlayerFromId", source, function(target)
	    if (tonumber(target.money) >= 100) then
		TriggerClientEvent("Hamburger", source)
		target:removeMoney(100)
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "Hamburger ~g~+1 !\n")
		else
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "~r~You don't have enought money !\n")
		end
	end)
end)

