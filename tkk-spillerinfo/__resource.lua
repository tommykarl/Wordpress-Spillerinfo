_____________    __       _________      .__.__  .__               .__        _____       
\__    ___/  | _|  | __  /   _____/_____ |__|  | |  |   ___________|__| _____/ ____\____  
  |    |  |  |/ /  |/ /  \_____  \\____ \|  |  | |  | _/ __ \_  __ \  |/    \   __\/  _ \ 
  |    |  |    <|    <   /        \  |_> >  |  |_|  |_\  ___/|  | \/  |   |  \  | (  <_> )
  |____|  |__|_ \__|_ \ /_______  /   __/|__|____/____/\___  >__|  |__|___|  /__|  \____/ 
               \/    \/         \/|__|                     \/              \/             

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

author 'TkKarsen'
description 'tkk-spllerinfo'
version '1.0.0'
website 'tkkarlsen.no'

server_script 'server.lua'


set_http_handler('/getPlayerCount', function(req, res)
    res.send(GetPlayerCount())
end)


exports {
    'GetPlayerCount'
}
