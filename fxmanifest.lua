fx_version 'cerulean'
game 'gta5'

-- Informações sobre recursos
name 'am-vehicleglobalboost'
description 'Recurso para aplicar aumentos de velocidade em veículos baseados em classes e modelos específicos, gerenciados a partir do servidor para evitar hacks.'
author 'AvilaMn'
version '1.0.0'

-- Scripts do lado do servidor
server_scripts {
    'config.lua',
    'server.lua'
}

-- Scripts do lado do cliente
client_scripts {
    'client.lua'
}