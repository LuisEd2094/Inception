<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db1' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'pwd' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

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
define('AUTH_KEY',         'vm^I+PV@l;]d3+61yMPVGla6 :ulZAYYG0QmAC$QH3)ImF:RUH$Pr-TA^-i/r@E)');
define('SECURE_AUTH_KEY',  'y/=Uab|-w9B[,& Aa~08 KubHq_L-{KOI}85.%+6hQRf$nvfu0@}^chbvLu94-LN');
define('LOGGED_IN_KEY',    'dZ;n6<0f#&cL=XTN.zY;5NY.CZI#C@hxasP9BIQI~h#B(Vayy6TUtaU>Z6fd(,$4');
define('NONCE_KEY',        'lb,Yiz&jN?B*N#-v?j<S,89H@|ive!crY#|?7?W-Y|R-$=z6|hmP5.df{(dG;wVq');
define('AUTH_SALT',        '-,_x,SdeL!H*c$%%f 2h5$#=8va},3iDmIA_I!S8_,L^5SPCIlH}<E*d%-QXdwy(');
define('SECURE_AUTH_SALT', 'FgNPW+OXCM4eR#vR&PS7G)/m%aP&qKXWuR)?QF(I E_5amZ?|A<!-%*hgS>,jfPa');
define('LOGGED_IN_SALT',   '<^_C]2D++$N]4nY-bN3ddu^-0/+>/dt3LY-> A;.A_iUaM^D=Z_%(C3*FpWDh;+r');
define('NONCE_SALT',       'HiQr+)hdXNle(BCqce)] a@z:b!^TY`5`n-rJt@|wYZfg.m+[|`em_{wE=m`l*gT');


define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );     


define('WP_CACHE', true);  
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';