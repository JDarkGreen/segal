===Live Admin Customizer===
Contributors: varunms
Author URI: http://varunsridharan.in/
Plugin URL: https://wordpress.org/plugins/live-admin-customizer/
Donate link: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QU8E7XRWK7UH8
Tags:admin,theme,changer,admin themes,color,roleover,role over,customizer,color picker,color changer,modifier,beautifier 
Requires at least: 3.5
Tested up to: 4.5
Stable tag: 0.5
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
 

Create Customized theme for wordpress admin panel

== Description ==

Create Customized theme for wordpress admin panel. with out any code

<h4> Features </h4>
* Auto Enques Admin Bar Css In Front End
* Built-in 5 Admin Themes
* Create New Themes
* Edit Created Theme
* Delete Created Existing Themes

<h4>How To Disable Admin Bar Css File </h4>
Use This Filter `lac_front_adminbar_css` Or Add The Below Code In Your Themes **Functions.php**
`add_filter('lac_front_adminbar_css','remove_lac_front_adminbar_css_file');
function remove_lac_front_adminbar_css_file(){return false;}`
 
== Installation ==

This section describes how to install the plugin and get it working.

* Upload `live_admin_customizer` to the `/wp-content/plugins/` directory
* Activate the plugin through the \'Plugins\' menu in WordPress
* Create New Theme Using [Live Admin Customizer]

== Screenshots ==
1. Matt Black Admin Theme
2. Matt Blue Admin Theme
3. Matt Green Admin Theme
4. Matt Pink Admin Theme
5. Matt Red Admin Theme 
5. Matt 3 Color Admin Theme 


== Frequently Asked Questions ==
**How I Can Remove Admin Bar Css File In Front End**
Use This Filter `lac_front_adminbar_css`

**I have an idea for your plugin!**  
That's great. We are always open to your input, and we would like to add anything we think will be useful to a lot of people. Please send your comment/idea to <a href="mailto:varunsridharan23@gmail.com">varunsridharan23@gmail.com</a>

**I found a bug!**  
Oops. Please User github / WordPress to post bugs. Github : https://github.com/technofreaky/Live-Admin-Customizer

== Changelog ==
= 0.5 =
* Minofr Bug Fix
* Updated To Latest WP

= 0.4 =
* Tested & Updated to Latest WordPress Version
* Minor UI Changes
* Minor Bug Fix

= 0.3 =
* Admin Bar Css Now Hookable To Front End.

= 0.2 =
* Small Bug Fix With WP Old Version
* Added Theme Edit Option
* Added Secondary Button CSS

= 0.1 =
* Base Version
