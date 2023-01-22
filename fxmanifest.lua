----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'cerulean'

game 'gta5'

author 'CASE#1993'

description 'BOII | Development - Utility: RGB Controller'

version '2.0.0'

lua54 'yes'

ui_page 'html/index.html'

files {
    'html/**/*',
}

shared_scripts {
    'shared/*'
}

client_scripts {
    'client/*',
}

server_scripts {
    'server/*',
}

escrow_ignore {
    'shared/*',
    'client/*',
    'server/*'
}