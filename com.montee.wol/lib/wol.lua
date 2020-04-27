wol = {}

wol.sendMagicPacket = function (broadcast, machex)
	local mac = ''
	for w in string.gmatch(machex, "[0-9A-Za-z][0-9A-Za-z]") do
	  mac = mac .. string.char(tonumber(w, 16))
	end

	local udp = require("socket").udp()
	udp:settimeout(1)
	udp:setoption("broadcast", true)
	udp:sendto(string.char(0xff):rep(6) .. mac:rep(16), broadcast, 9)
end
