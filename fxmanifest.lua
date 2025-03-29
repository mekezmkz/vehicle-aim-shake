fx_version 'cerulean'
game 'gta5'

lua54 'yes'  -- Add this line to enable Lua 5.4

author 'MKZ DEV'
description 'OX Items Script for ESX Legacy'
version '1.0.0'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

dependencies {
    'es_extended',
    'ox_inventory',
    'ox_lib'
}

