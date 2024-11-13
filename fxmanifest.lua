fx_version 'cerulean'

game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


author 'qw-scripts'
convertedby 'DFA-DEVELOPMENT'

lua54 'yes'

shared_scripts {
    'shared/config.lua',
    '@ox_lib/init.lua'
}

client_scripts { 'client/*.lua' }

server_scripts { '@oxmysql/lib/MySQL.lua', 'server/*.lua' }

ui_page 'html/index.html'

files { 'html/index.html', 'html/js/index.js', 'html/assets/index.css', 'html/chineserocksrg.ttf' }

dependencies {
    'oxmysql',
    'ox_lib',
    'rsg-core'
}