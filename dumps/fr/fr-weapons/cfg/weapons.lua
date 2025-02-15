local cfg = {}

--!Class Types
--AR - 7.5kg
--SMG - 5kg
--Shotgun - 7.5kg
--Pistol - 2.5KG
--Heavy - 10KG
--Melee - 1KG

--todo change all WT_HASH to same as WEAPON_HASH

cfg.weapons = {
    --? Melees
    ["GADGET_PARACHUTE"] = {
        name = "Parachute",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_STUNGUN"] = {
        name = "Tazer",
        class = "Melee", --So that it can be equipped with a pistol.
        ammo = "modelammo",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_FLASHLIGHT"] = {
        name = "Flashlight",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_NIGHTSTICK"] = {
        name = "Police Baton",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_MJOLNIR"] = {
        name = "Mjolnir",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = false,
        model = "w_me_mjolnir",
    },
    ["WEAPON_MOLOTOV"] = {
        name = "Molotov",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_SMOKEGRENADE"] = {
        name = "Smoke Grenade",
        class = "Melee",
        ammo = "",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_SNOWBALL"] = {
        name = "Snowball",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_FLASHBANG"] = {
        name = "Flashbang",
        class = "Melee",
        ammo = "modelammo",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_STAFFGUN"] = {
        name = "FR Staff Gun",
        class = "Pistol",
        ammo = "",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_FORRESTAX"] = {
        name = "The Forrest Axe",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_forrestax",
    },
    ["WEAPON_SKULLCLUB"] = {
        name = "Skull Club",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_skullclub",
    },
    ["WEAPON_SLEDGESHAMMER"] = {
        name = "Sledges Hammer",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_sledgeshammer",
    },
    ["WEAPON_CLIMBINGAXE"] = {
        name = "Climbing Axe",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_climbingaxe",
    },
    ["WEAPON_CRAFTEDAXE"] = {
        name = "Crafted Axe",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_craftedaxe",
    },
    ["WEAPON_BROOM"] = {
        name = "Broom",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_broom",
    },
    ["WEAPON_CLEAVER"] = {
        name = "Cleaver",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_CRICKETBAT"] = {
        name = "Cricket Bat",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_cricketbat",
    },
    ["WEAPON_DILDO"] = {
        name = "Pink Dildo",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_dildo",
    },
    ["WEAPON_FIREAXE"] = {
        name = "Fireaxe",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_fireaxe",
    },
    ["WEAPON_GUITAR"] = {
        name = "Guitar",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_guitar",
    },
    ["WEAPON_KITCHENKNIFE"] = {
        name = "Kitchen Knife",
        class = "Pistol",
        ammo = "",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_SHANK"] = {
        name = "Wooden Shank",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_SHOVEL"] = {
        name = "Shovel",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_shovel",
    },
    ["WEAPON_TRAFFICSIGN"] = {
        name = "Traffic Sign",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_HAMAXEHAM"] = {
        name = "Hammer Axe Hammer",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_hamaxeham",
    },
    ["WEAPON_TOILETBRUSH"] = {
        name = "Toilet Brush",
        class = "Melee",
        ammo = "",
        policeWeapon = false,
        model = "w_me_toiletbrush",
    },
    --? pistols
    ["WEAPON_PDGLOCK"] = {
        name = "Glock",
        class = "Pistol",
        ammo = "Police Issued 9mm",
        policeWeapon = true,
        model = "",
    },
    ["WEAPON_BERETTA"] = {
        name = "Berreta M9 Pistol",
        class = "Pistol",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_M1911"] = {
        name = "M1911 Pistol",
        class = "Pistol",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_PUNISHER1911"] = {
        name = "Punisher 1911",
        class = "Pistol",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_PYTHON"] = {
        name = "Python",
        class = "Pistol",
        ammo = ".357 Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_SUPDEAGLE"] = {
        name = "Supreme Deagle",
        class = "Pistol",
        ammo = ".357 Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_TEC9"] = {
        name = "Tec-9",
        class = "Pistol",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_REVOLVER"] = {
        name = "Rebel Revolver",
        class = "Pistol",
        ammo = ".357 Bullets",
        policeWeapon = false,
        model = "",
    },
    ["WEAPON_ROOK"] = {
        name = "Rook 9mm",
        class = "Pistol",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "",
    },
    --? ARs
    ["WEAPON_GOLDAK"] = {
        name = "Golden AK-47",
        class = "AR",
        ammo = "7.62mm Bullets",
        policeWeapon = false,
        model = "w_ar_goldak",
    },
    ["WEAPON_AK200"] = {
        name = "AK 200",
        class = "AR",
        ammo = "7.62mm Bullets",
        policeWeapon = false,
        model = "w_ar_akkal",
    },
    ["WEAPON_GALIL"] = {
        name = "Galil",
        class = "AR",
        ammo = "7.62mm Bullets",
        policeWeapon = false,
        model = "w_ar_galil",
    },
    ["WEAPON_AKM"] = {
        name = "AKM",
        class = "AR",
        ammo = "7.62mm Bullets",
        policeWeapon = false,
        model = "w_ar_akm",
    },
    ["WEAPON_SPAR16"] = {
        name = "Spar 16",
        class = "AR",
        ammo = "5.56mm NATO",
        policeWeapon = false,
        model = "w_ar_spar16",
    },
    ["WEAPON_MXM"] = {
        name = "MXM",
        class = "AR",
        ammo = "5.56mm NATO",
        policeWeapon = false,
        model = "w_ar_mxm",
    },
    ["WEAPON_M4A1"] = {
        name = "M4A1",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_m4a1",
    },
    ["WEAPON_SIGMCX"] = {
        name = "SIG MCX",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_sigmcx",
    },
    ["WEAPON_SPAR17"] = {
        name = "Spar 17",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_spar17",
    },
    ["WEAPON_G36K"] = {
        name = "G36K",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_g36k",
    },
    ["WEAPON_MK18V2"] = {
        name = "MK18 V2",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_mk18v2",
    },
    ["WEAPON_TYLON"] = {
        name = "M4A1 Custom",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_tylon",
    },
    ["WEAPON_NOVESKENSR9"] = {
        name = "Noveske NSR-9",
        class = "AR",
        ammo = "Police Issued 5.56mm",
        policeWeapon = true,
        model = "w_ar_noveskensr9",
    },
    --?SMG
    ["WEAPON_MP5"] = {
        name = "MP5",
        class = "SMG",
        ammo = "Police Issued 9mm",
        policeWeapon = true,
        model = "w_sb_mp5",
    },
    ["WEAPON_CQ300"] = {
        name = "CQ300",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_cq300",
    },
    ["WEAPON_NONMP5"] = {
        name = "MP5 Tazer",
        class = "SMG",
        ammo = "Police Issued 9mm",
        policeWeapon = true,
        model = "w_sb_nonmp5",
    },
    ["WEAPON_STING"] = {
        name = "Sting 9mm",
        class = "SMG",
        ammo = "Police Issued 9mm",
        policeWeapon = true,
        model = "w_sb_sting",
    },
    ["WEAPON_MPX"] = {
        name = "MPX",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_mpx",
    },
    ["WEAPON_TYLON2"] = {
        name = "MP5",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_tylon2",
    },
    ["WEAPON_MP5TEMPER"] = {
        name = "Tempered MP5",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_mp5temper",
    },
    ["WEAPON_UMP45"] = {
        name = "UMP-45",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_ump45",
    },
    ["WEAPON_UZI"] = {
        name = "Uzi",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_uzi",
    },
    ["WEAPON_VITYAZ"] = {
        name = "PP-19-01 Vityaz",
        class = "SMG",
        ammo = "9mm Bullets",
        policeWeapon = false,
        model = "w_sb_vityaz",
    },

    --? shotguns
    ["WEAPON_REMINGTON870"] = {
        name = "Remington870",
        class = "Shotgun",
        ammo = "Police Issued 12 Gauge",
        policeWeapon = true,
        model = "w_sg_remington870",
    },
    ["WEAPON_WINCHESTER12"] = {
        name = "Winchester 12",
        class = "Shotgun",
        ammo = "12 Gauge Bullets",
        policeWeapon = false,
        model = "w_sg_winchester12",
    },
    ["WEAPON_SPAZ"] = {
        name = "Spaz 12",
        class = "Shotgun",
        ammo = "12 Gauge Bullets",
        policeWeapon = false,
        model = "w_sg_spaz",
    },
    ["WEAPON_OLYMPIA"] = {
        name = "Olympia Shotgun",
        class = "Shotgun",
        ammo = "12 Gauge Bullets",
        policeWeapon = false,
        model = "w_sg_olympia",
    },
    --? snipers
    ["WEAPON_AX50"] = {
        name = "AX-50",
        class = "Heavy",
        ammo = "Police Issued .308 Sniper Rounds",
        policeWeapon = true,
        model = "w_sr_ax50",
    },
    ["WEAPON_STAC"] = {
        name = "S-TAC",
        class = "Heavy",
        ammo = ".308 Sniper Rounds",
        policeWeapon = false,
        model = "w_sr_stac",
    },
    ["WEAPON_SVD"] = {
        name = "Dragunov SVD",
        class = "Heavy",
        ammo = ".308 Sniper Rounds",
        policeWeapon = false,
        model = "w_sr_svd",
    },
    ["WEAPON_REMINGTON700"] = {
        name = "Remington700",
        class = "Heavy",
        ammo = "Police Issued .308 Sniper Rounds",
        policeWeapon = true,
        model = "w_sr_remington700",
    },
    ["WEAPON_MOSIN"] = {
        name = "Mosin Nagant",
        class = "Heavy",
        ammo = "7.62mm Bullets",
        policeWeapon = false,
        model = "w_ar_mosin",
    },
    ["WEAPON_TEMPERED"] = {
        name = "Tempered M249",
        class = "LMG",
        ammo = "5.56mm NATO",
        policeWeapon = false,
        model = "w_mg_m249tempered",
    },
}


cfg.nativeWeaponModelsToNames = {
    ["WEAPON_PISTOL"] = 'Pistol',
    ["WEAPON_COMBATPISTOL"] = 'Combat Pistol',
    ["WEAPON_APPISTOL"] = 'AP Pistol',
    ["WEAPON_PISTOL50"] = 'Pistol .50',
    ["WEAPON_MICROSMG"] = 'Micro SMG',
    ["WEAPON_SMG"] = 'SMG',
    ["WEAPON_ASSAULTSMG"] = 'Assault SMG',
    ["WEAPON_ASSAULTRIFLE"] = 'Assault Rifle',
    ["WEAPON_CARBINERIFLE"] = 'Carbine Rifle',
    ["WEAPON_ADVANCEDRIFLE"] = 'Advanced Rifle',
    ["WEAPON_MG"] = 'MG',
    ["WEAPON_COMBATMG"] = 'Combat MG',
    ["WEAPON_PUMPSHOTGUN"] = 'Pump Shotgun',
    ["WEAPON_SAWNOFFSHOTGUN"] = 'Sawed-Off Shotgun',
    ["WEAPON_ASSAULTSHOTGUN"] = 'Assault Shotgun',
    ["WEAPON_BULLPUPSHOTGUN"] = 'Bullpup Shotgun',
    ["WEAPON_SNIPERRIFLE"] = 'Sniper Rifle',
    ["WEAPON_HEAVYSNIPER"] = 'Heavy Sniper',
    ["WEAPON_REMOTESNIPER"] = 'Remote Sniper',
    ["WEAPON_GRENADELAUNCHER"] = 'Grenade Launcher',
    ["WEAPON_GRENADELAUNCHER_SMOKE"] = 'Smoke Grenade Launcher',
    ["WEAPON_RPG"] = 'RPG',
    ["WEAPON_PASSENGER_ROCKET"] = 'Passenger Rocket',
    ["WEAPON_AIRSTRIKE_ROCKET"] = 'Airstrike Rocket',
    ["WEAPON_STINGER"] = 'Stinger [Vehicle]',
    ["WEAPON_MINIGUN"] = 'Minigun',
    ["WEAPON_GRENADE"] = 'Grenade',
    ["WEAPON_STICKYBOMB"] = 'Sticky Bomb',
    ["WEAPON_SMOKEGRENADE"] = 'Tear Gas',
    ["WEAPON_BZGAS"] = 'BZ Gas',
    ["WEAPON_MOLOTOV"] = 'Molotov',
    ["WEAPON_FIREEXTINGUISHER"] = 'Fire Extinguisher',
    ["WEAPON_PETROLCAN"] = 'Jerry Can',
    ["OBJECT"] = 'Object',
    ["WEAPON_BALL"] = 'Ball',
    ["WEAPON_FLARE"] = 'Flare',
    ["VEHICLE_WEAPON_TANK"] = 'Tank Cannon',
    ["VEHICLE_WEAPON_SPACE_ROCKET"] = 'Rockets',
    ["VEHICLE_WEAPON_PLAYER_LASER"] = 'Laser',
    ["AMMO_RPG"] = 'Rocket',
    ["AMMO_TANK"] = 'Tank',
    ["AMMO_SPACE_ROCKET"] = 'Rocket',
    ["AMMO_PLAYER_LASER"] = 'Laser',
    ["AMMO_ENEMY_LASER"] = 'Laser',
    ["WEAPON_RAMMED_BY_CAR"] = 'Rammed by Car',
    ["WEAPON_BOTTLE"] = 'Bottle',
    ["WEAPON_GUSENBERG"] = 'Gusenberg Sweeper',
    ["WEAPON_SNSPISTOL"] = 'SNS Pistol',
    ["WEAPON_VINTAGEPISTOL"] = 'Vintage Pistol',
    --["WEAPON_DAGGER"] = 'Antique Cavalry Dagger',
    ["WEAPON_FLAREGUN"] = 'Flare Gun',
    ["WEAPON_HEAVYPISTOL"] = 'Heavy Pistol',
    ["WEAPON_SPECIALCARBINE"] = 'Special Carbine',
    ["WEAPON_MUSKET"] = 'Musket',
    ["WEAPON_FIREWORK"] = 'Firework Launcher',
    ["WEAPON_MARKSMANRIFLE"] = 'Marksman Rifle',
    ["WEAPON_HEAVYSHOTGUN"] = 'Heavy Shotgun',
    ["WEAPON_PROXMINE"] = 'Proximity Mine',
    ["WEAPON_HOMINGLAUNCHER"] = 'Homing Launcher',
    ["WEAPON_HATCHET"] = 'Hatchet',
    ["WEAPON_COMBATPDW"] = 'Combat PDW',
    ["WEAPON_KNUCKLE"] = 'Knuckle Duster',
    ["WEAPON_MARKSMANPISTOL"] = 'Marksman Pistol',
    ["WEAPON_MACHETE"] = 'Machete',
    ["WEAPON_MACHINEPISTOL"] = 'Machine Pistol',
    ["WEAPON_FLASHLIGHT"] = 'Flashlight',
    ["WEAPON_DBSHOTGUN"] = 'Double Barrel Shotgun',
    ["WEAPON_COMPACTRIFLE"] = 'Compact Rifle',
    ["WEAPON_SWITCHBLADE"] = 'Switchblade',
    ["WEAPON_REVOLVER"] = 'Heavy Revolver',
    ["WEAPON_FIRE"] = 'Fire',
    ["WEAPON_HELI_CRASH"] = 'Heli Crash',
    ["WEAPON_RUN_OVER_BY_CAR"] = 'Run over by Car',
    ["WEAPON_HIT_BY_WATER_CANNON"] = 'Hit by Water Cannon',
    ["WEAPON_EXHAUSTION"] = 'Exhaustion',
    ["WEAPON_EXPLOSION"] = 'Explosion',
    ["WEAPON_ELECTRIC_FENCE"] = 'Electric Fence',
    ["WEAPON_BLEEDING"] = 'Bleeding',
    ["WEAPON_DROWNING_IN_VEHICLE"] = 'Drowning in Vehicle',
    ["WEAPON_DROWNING"] = 'Drowning',
    ["WEAPON_BARBED_WIRE"] = 'Barbed Wire',
    ["WEAPON_VEHICLE_ROCKET"] = 'Vehicle Rocket',
    ["WEAPON_BULLPUPRIFLE"] = 'Bullpup Rifle',
    ["WEAPON_ASSAULTSNIPER"] = 'Assault Sniper',
    ["VEHICLE_WEAPON_ROTORS"] = 'Rotors',
    ["WEAPON_RAILGUN"] = 'Railgun',
    ["WEAPON_AIR_DEFENCE_GUN"] = 'Air Defence Gun',
    ["WEAPON_AUTOSHOTGUN"] = 'Automatic Shotgun',
    ["WEAPON_BATTLEAXE"] = 'Battle Axe',
    ["WEAPON_COMPACTLAUNCHER"] = 'Compact Grenade Launcher',
    ["WEAPON_MINISMG"] = 'Mini SMG',
    ["WEAPON_PIPEBOMB"] = 'Pipebomb',
    ["WEAPON_POOLCUE"] = 'Poolcue',
    ["WEAPON_WRENCH"] = 'Wrench',
    ["WEAPON_SNOWBALL"] = 'Snowball',
    ["WEAPON_ANIMAL"] = 'Animal',
    ["WEAPON_COUGAR"] = 'Cougar',
    ["WEAPON_UNARMED"] = "Fists"
}

cfg.illegalNativeWeaponsHashToModels = {
    [`WEAPON_HAMMER`] = 'Hammer',
    [`WEAPON_BAT`] = 'Baseball Bat',
    [`WEAPON_GOLFCLUB`] = 'Golf Club',
    [`WEAPON_CROWBAR`] = 'Crowbar',
    [`WEAPON_PISTOL`] = 'Pistol',
    [`WEAPON_COMBATPISTOL`] = 'Combat Pistol',
    [`WEAPON_APPISTOL`] = 'AP Pistol',
    [`WEAPON_PISTOL50`] = 'Pistol .50',
    [`WEAPON_MICROSMG`] = 'Micro SMG',
    [`WEAPON_SMG`] = 'SMG',
    [`WEAPON_ASSAULTSMG`] = 'Assault SMG',
    [`WEAPON_ASSAULTRIFLE`] = 'Assault Rifle',
    [`WEAPON_CARBINERIFLE`] = 'Carbine Rifle',
    [`WEAPON_ADVANCEDRIFLE`] = 'Advanced Rifle',
    [`WEAPON_MG`] = 'MG',
    [`WEAPON_COMBATMG`] = 'Combat MG',
    [`WEAPON_PUMPSHOTGUN`] = 'Pump Shotgun',
    [`WEAPON_SAWNOFFSHOTGUN`] = 'Sawed-Off Shotgun',
    [`WEAPON_ASSAULTSHOTGUN`] = 'Assault Shotgun',
    [`WEAPON_BULLPUPSHOTGUN`] = 'Bullpup Shotgun',
    [`WEAPON_SNIPERRIFLE`] = 'Sniper Rifle',
    [`WEAPON_HEAVYSNIPER`] = 'Heavy Sniper',
    [`WEAPON_REMOTESNIPER`] = 'Remote Sniper',
    [`WEAPON_GRENADELAUNCHER`] = 'Grenade Launcher',
    [`WEAPON_GRENADELAUNCHER_SMOKE`] = 'Smoke Grenade Launcher',
    [`WEAPON_RPG`] = 'RPG',
    [`WEAPON_STINGER`] = 'Stinger [Vehicle]',
    [`WEAPON_MINIGUN`] = 'Minigun',
    [`WEAPON_GRENADE`] = 'Grenade',
    [`WEAPON_STICKYBOMB`] = 'Sticky Bomb',
    [`WEAPON_BOTTLE`] = 'Bottle',
    [`WEAPON_GUSENBERG`] = 'Gusenberg Sweeper',
    [`WEAPON_SNSPISTOL`] = 'SNS Pistol',
    [`WEAPON_VINTAGEPISTOL`] = 'Vintage Pistol',
    [`WEAPON_HEAVYPISTOL`] = 'Heavy Pistol',
    [`WEAPON_SPECIALCARBINE`] = 'Special Carbine',
    [`WEAPON_MUSKET`] = 'Musket',
    [`WEAPON_FIREWORK`] = 'Firework Launcher',
    [`WEAPON_MARKSMANRIFLE`] = 'Marksman Rifle',
    [`WEAPON_HEAVYSHOTGUN`] = 'Heavy Shotgun',
    [`WEAPON_PROXMINE`] = 'Proximity Mine',
    [`WEAPON_HOMINGLAUNCHER`] = 'Homing Launcher',
    [`WEAPON_HATCHET`] = 'Hatchet',
    [`WEAPON_COMBATPDW`] = 'Combat PDW',
    [`WEAPON_MARKSMANPISTOL`] = 'Marksman Pistol',
    [`WEAPON_MACHINEPISTOL`] = 'Machine Pistol',
    [`WEAPON_DBSHOTGUN`] = 'Double Barrel Shotgun',
    [`WEAPON_COMPACTRIFLE`] = 'Compact Rifle',
    [`WEAPON_REVOLVER`] = 'Heavy Revolver',
    [`WEAPON_VEHICLE_ROCKET`] = 'Vehicle Rocket',
    [`WEAPON_BULLPUPRIFLE`] = 'Bullpup Rifle',
    [`WEAPON_ASSAULTSNIPER`] = 'Assault Sniper',
    [`WEAPON_RAILGUN`] = 'Railgun',
    [`WEAPON_AIR_DEFENCE_GUN`] = 'Air Defence Gun',
    [`WEAPON_AUTOSHOTGUN`] = 'Automatic Shotgun',
    [`WEAPON_BATTLEAXE`] = 'Battle Axe',
    [`WEAPON_COMPACTLAUNCHER`] = 'Compact Grenade Launcher',
    [`WEAPON_MINISMG`] = 'Mini SMG',
    [`WEAPON_PIPEBOMB`] = 'Pipebomb',
    [`WEAPON_POOLCUE`] = 'Poolcue',
    [`WEAPON_WRENCH`] = 'Wrench',
    [`WEAPON_MARKSMANRIFLE_MK2`] = 'Wrench',
    [`WEAPON_PUMPSHOTGUN_MK2`] = 'Wrench',
    [`WEAPON_SPECIALCARBINE_MK2`] = 'Wrench',
    [`WEAPON_DOUBLEACTION`] = 'Wrench',
    [`WEAPON_REVOLVER_MK2`] = 'Wrench',
    [`WEAPON_SNSPISTOL_MK2`] = 'Wrench',
    [`WEAPON_RAYPISTOL`] = 'Ray Pistol',
    [`WEAPON_RAYCARBINE`] = 'Ray Carbine',
    [`WEAPON_RAYMINIGUN`] = 'Ray Minigun',
    [`WEAPON_DIGISCANNER`] = 'WEAPON_DIGISCANNER',
    [`WEAPON_NAVYREVOLVER`] = 'WEAPON_NAVYREVOLVER',
    [`WEAPON_CERAMICPISTOL`] = 'WEAPON_CERAMICPISTOL',
    [`WEAPON_STONE_HATCHET`] = 'WEAPON_STONE_HATCHET',
    [`WEAPON_MILITARYRIFLE`] = 'WEAPON_MILITARYRIFLE',
    [`WEAPON_COMBATSHOTGUN`] = 'WEAPON_COMBATSHOTGUN',
    [2508868239] = 'Unk',
    [-1786099057] = 'Unk',
    [2982836145] = 'Unk',
    [-1312131151] = 'Unk',
    [3249783761] = 'Unk',
    [-1045183535] = 'Unk',
    [205991906] = 'Unk',
    [375527679] = 'Unk',
    [1119849093] = 'Unk',
}

for weaponModel,_ in pairs(cfg.weapons) do
    cfg.weapons[weaponModel].hash = GetHashKey(weaponModel)
end

cfg.noAmmoWeapons = {}

for weaponModel,weaponInfo in pairs(cfg.noAmmoWeapons) do
    if weaponInfo.ammo == "" then
        cfg.noAmmoWeapons[weaponModel] = weaponInfo.hash
    end
end

cfg.weaponHashToModels = {}

for weaponModel,weaponInfo in pairs(cfg.weapons) do
    cfg.weaponHashToModels[weaponInfo.hash] = weaponModel
end

cfg.nativeWeaponHashToModels = {}

return cfg