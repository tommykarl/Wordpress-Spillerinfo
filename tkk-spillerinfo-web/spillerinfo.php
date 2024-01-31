
_______________  __.____  __.   _________      .__.__  .__               .__        _____       
\__    ___/    |/ _|    |/ _|  /   _____/_____ |__|  | |  |   ___________|__| _____/ ____\____  
  |    |  |      < |      <    \_____  \\____ \|  |  | |  | _/ __ \_  __ \  |/    \   __\/  _ \ 
  |    |  |    |  \|    |  \   /        \  |_> >  |  |_|  |_\  ___/|  | \/  |   |  \  | (  <_> )
  |____|  |____|__ \____|__ \ /_______  /   __/|__|____/____/\___  >__|  |__|___|  /__|  \____/ 
                  \/       \/         \/|__|                     \/              \/             


<?php
/*
Plugin Name: tkk-spillerinfo
Description: Henter antall spillere på en FiveM-server.
Version: 1.0 Beta
Author: tkkarlsen
*/

__________          __    __            __    .__                  
\______   \___.__._/  |__/  |_   __ ___/  |_  |  |__   ___________ 
 |    |  _<   |  |\   __\   __\ |  |  \   __\ |  |  \_/ __ \_  __ \
 |    |   \\___  | |  |  |  |   |  |  /|  |   |   Y  \  ___/|  | \/
 |______  // ____| |__|  |__|   |____/ |__|   |___|  /\___  >__|   
        \/ \/                                      \/     \/      
        

function fivem_player_counter() {
    $server_ip = 'din.fivem.server.ip'; // Bytt ut denne med ipen til serveren
    $server_port = '30120'; // Bytt dette med din serverport

    $json_data = file_get_contents("http://$server_ip:$server_port/players.json");
    $players = json_decode($json_data, true);

    $player_count = count($players);

    echo "<p>Antall spillere på serveren: $player_count</p>";
}

add_shortcode('fivem_player_counter', 'fivem_player_counter');

