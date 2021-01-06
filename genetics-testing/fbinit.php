  
<?php

require_once 'Facebook/autoload.php';

if (!session_id())
{
    session_start();
}

// Call Facebook API

$facebook = new \Facebook\Facebook([
  'app_id'      => '895076581230370',
  'app_secret'     => '2977a5bdf6ccb7047a414d53c956d4a1',
  'default_graph_version'  => 'v2.10'
]);

?>