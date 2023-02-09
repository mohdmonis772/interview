<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mybase' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-ZIto~4vZPmb{Z^O[H9Q~x}fw._Z[0qD7*FwA3<Ee/}b&>O_P*s-oFT4ug!`m5ks' );
define( 'SECURE_AUTH_KEY',  'c/;+4N0}$lM7A+C4t.I?Y=xkQx<jLbwW90f/U8-g=~XFo[z-hob_P5,L45qxEa0.' );
define( 'LOGGED_IN_KEY',    'BI<~>,B]der6h?i1e2tNEIz}eQzV]CFt15=!eU%_WwoSg &RtMx;J]BvShX<{jue' );
define( 'NONCE_KEY',        'NpO|Y.f>B}gGXMyB0;O]#PZ,%~Uy+V^94WH<)FR&!C9R~Q5~Ua!Cs6}%C6A%H(D#' );
define( 'AUTH_SALT',        '+5OJAz]t|Q9)0HdgR`lQH}F#5,XFw+lucUOcu$gwLAT6Rv4<Cm;pIQiZAG0)eh t' );
define( 'SECURE_AUTH_SALT', 'hU{-=K1X@sk(G3cM2#>$]^chMA%4M:jt6V:uf)E6;.2^01|;]}k+o+Z)zz>LgUHM' );
define( 'LOGGED_IN_SALT',   'd* kW=?%wUP18O,_3Q{Hs {_NzxPR]lnS%C+)/u?jmW +$D[z?Z<V-:$8(UZ|0Y;' );
define( 'NONCE_SALT',       '<#+,HK!mP1veFeQTr$GGoP/-C@~!?)BWcL9i)h#1Z^Z@)ek?o%[^}C:A})o!|Smg' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
