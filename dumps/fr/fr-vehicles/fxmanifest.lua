fx_version 'cerulean'
games { 'rdr3', 'gta5' }

files {
    'data/**/handling.meta',
    'data/**/vehiclelayouts.meta',
    'data/**/vehicles.meta',
    'data/**/carvariations.meta',
    'data/**/carcols*.meta',
    
}

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/**/vehiclelayouts.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols*.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'


client_scripts {
    "cfg/cfg_vehiclemaxspeeds.lua",
    "cfg/cfg_garages.lua",
    "cfg/cfg_inventory.lua",
}

shared_scripts {
    "cfg/inventory.lua",
    "cfg/garages.lua",
    "cfg/cfg_vehiclemaxspeeds.lua",
}

