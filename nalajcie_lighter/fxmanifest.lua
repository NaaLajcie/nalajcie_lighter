--[[ Fx info ]]--

fx_version  'adamant'
game  'gta5'
lua54 'yes'

--[[ Autor info ]]--

author       'NaLajcie'
description  'NaLajcie - Lighter'

--[[ Manifest ]]--

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}
