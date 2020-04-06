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

local mywait = wait
for i,v in pairs(get_gc_objects(true)) do
	if type(v) == "table" then
		if rawget(v, "script") then
			make_writeable(v.os)
			v.os.time = function() return 0 end
			v.tick = function() return 0 end
			v.wait = function(...) print(...) return mywait(...) end
		end
	end
end
