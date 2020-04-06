--[[
	                                 /$$                               /$$                 /$$     	 
	                                | $$                              | $$                | $$      
	  /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$  /$$$$$$$       | $$$$$$$  /$$   /$$| $$$$$$$ 
	 /$$__  $$ /$$__  $$ /$$__  $$|_  $$_/   /$$__  $$| $$__  $$      | $$__  $$| $$  | $$| $$__  $$
	| $$  \ $$| $$  \__/| $$  \ $$  | $$    | $$  \ $$| $$  \ $$      | $$  \ $$| $$  | $$| $$  \ $$
	| $$  | $$| $$      | $$  | $$  | $$ /$$| $$  | $$| $$  | $$      | $$  | $$| $$  | $$| $$  | $$
	| $$$$$$$/| $$      |  $$$$$$/  |  $$$$/|  $$$$$$/| $$  | $$      | $$  | $$|  $$$$$$/| $$$$$$$/
	| $$____/ |__/       \______/    \___/   \______/ |__/  |__/      |__/  |__/ \______/ |_______/ 
	| $$                                                                                            
	| $$                                                                                            
	|__/    
	
	When using/modifiying this script please keep this watermark.
	This may look buggy in protosmasher's text editor but it should work fine.
	- HttpGet
--]]

for i,v in pairs(get_gc_objects(true)) do
	if type(v) == "table" then
		if rawget(v, "getammo") then
			--table.foreach(v, warn)
			v.getammo = function() return 999 end
			v.getsecondaryammo = function() return 999 end
			while wait() do
				v.speedreduction = 5
				v.recoil = 0
				v.currentspread = 0
				v.reloadtime = 0
				v.currentTargetHealth = 1
				v.secondaryduration = 0
				v.mode = "automatic"
			end
		end
	end
end
