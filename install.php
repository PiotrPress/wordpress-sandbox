<?php declare( strict_types = 1 );

! is_file( '.config' ) or exit;

require __DIR__ . '/vendor/autoload.php';

PiotrPress\WordPress\Config::setup( '.config', [
    'WP_CONTENT_DIR' => __DIR__ . '/wp-content'
] );
PiotrPress\WordPress\Config::salt( '.config' );