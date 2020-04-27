ranga.luaload("com.montee.wol/lib/wol.lua")

function string:split(delimiter)
  local result = { }
  local from = 1
  local delim_from, delim_to = string.find( self, delimiter, from  )
  while delim_from do
    table.insert( result, string.sub( self, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( self, delimiter, from  )
  end
  table.insert( result, string.sub( self, from  ) )
  return result
end

args = string.split(os.getenv("RANGA_CRON_ARGS"), ",")

wol.sendMagicPacket(args[1], args[2])
