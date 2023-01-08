<?php

require __DIR__ . '/vendor/autoload.php';

$config = new PiotrPress\Configer( '.config', [
    'WP_CONTENT_DIR' => __DIR__ . '/wp-content'
] );
$config->save();