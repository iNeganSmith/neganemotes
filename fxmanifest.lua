fx_version 'cerulean'
game 'gta5'
description 'NeganEmotes - Tebex Free Edition (GPL-3.0 fork of rpemotes-reborn)'
version '2.1.3-tebex-free'

use_experimental_fxv2_oal 'yes'

provide "rpemotes"

dependencies {
    '/server:6683',
    '/onesync'
}

ui_page 'client/NUI/index.html'

files {
    'conditionalanims.meta',
    'header.png',
    'locales/*.lua',
    'client/NUI/js/*.js',
    'client/NUI/css/*.css',
    'client/NUI/index.html',
}

-- Unlocks idle Animations from GTA:O when using motorcycles, dirt bikes, etc
data_file 'CONDITIONAL_ANIMS_FILE' 'conditionalanims.meta'

shared_scripts {
    'types.lua',
    'locale.lua',
    'config.lua',
    'shared/ModelCompat.lua',
}

server_scripts {
    'server/Server.lua',
    'server/Updates.lua',
    'server/emojis.lua',
    'server/GroupEmote.lua'
}

client_scripts {
    'NativeUI.lua',
    'client/Utils.lua',
    'client/Bridge.lua',
    'client/AnimationList.lua',
    'client/StreamEmoteAddons.lua',
    'client/AnimationListCustom.lua',
    'client/Binoculars.lua',
    'client/Crouch.lua',
    'client/Emote.lua',
    'client/GroupEmote.lua',
    'client/EmoteMenu.lua',
    'client/NUI/EmoteMenuNUI.lua',
    'client/Expressions.lua',
    'client/Handsup.lua',
    'client/Keybinds.lua',
    'client/Favorites.lua',
    'client/NewsCam.lua',
    'client/NoIdleCam.lua',
    'client/Pointing.lua',
    'client/PTFX.lua',
    'client/Ragdoll.lua',
    'client/Syncing.lua',
    'client/Walk.lua',
    'client/Placement.lua',
    'client/emojis.lua',
}



















-- Third-party streamed assets are intentionally excluded from the tebex-free branch.
