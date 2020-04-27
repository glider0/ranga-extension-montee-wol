ranga.luaload("com.montee.wol/lib/wol.lua")

ranga.proto.prepare()
ranga.proto.header("code", "0")
ranga.proto.content()

arg = {}
arg[0] = ''
arg[1] = io.read("*l")
arg[2] = io.read("*l")

if #arg ~= 2 then
  print("Usage: {ranga-cli addon invoke com.montee.wol} wol <Broadcast> <MAC>\n")
  os.exit()
end

wol.sendMagicPacket(arg[1], arg[2])
