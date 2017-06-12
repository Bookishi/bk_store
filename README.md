# Food Store V0.1

<a href="https://discord.gg/SsJuByY"><img alt="Discord Status" src="https://discordapp.com/api/guilds/321382664466857985/widget.png"></a>

You can buy Hamburger, Sandwich, Water Bottle and Coke Can in this shop, to add a
food or drink you must do :

 - Create a item like a coffee with value and type in table items in your database
 - if you want create a coffee add this in client .lua
 
```lua
function Coffee()
    TriggerServerEvent("Coffee_Server")
    Menu.hidden = false
end

RegisterNetEvent("Coffee")
AddEventHandler("Coffee",  function()
    TriggerEvent("player:receiveItem", ID OF ITEM, 1)
    Menu.hidden = false  
end)
```
- and a new button

```lua
   Menu.addButton("Coffee (PRICE$)", "Coffee", nil)
```

- and you add this in server.lua

```lua
RegisterServerEvent("Coffee_Server")
AddEventHandler("Coffee_Server", function()
    TriggerEvent("es:getPlayerFromId", source, function(target)
	if (tonumber(target.money) >= PRICE) then
	TriggerClientEvent("Coffee", source)
	target:removeMoney(PRICE)
	TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "Coffee ~g~+1 !\n")
	else
	TriggerClientEvent("es_freeroam:notify", source, "CHAR_PROPERTY_BAR_MIRROR_PARK", 1, "Store", false, "~r~You don't have enought         money !\n")
	end
    end)
end)
```
- and change ( "ID OF ITEM" and "PRICE")

## Requirements

- #####  Essentialmode 2.X
- ##### es_freeroam
- ##### VDK Inventory
- ##### Food Hud V0.3.3

## Changelog
### 2017-05-27 V0.1 
 - Released bk_store

## Installation

* Install requirements
* Download bk_food folder
* Put this folder to resources folder in your server
* Add SQL.sql to your database
* Add bk_food in AutoStartResource
