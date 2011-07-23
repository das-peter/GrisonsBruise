<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function custom_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = 'GrisonsBruise | Color your life';

  $form['server_settings']['site_default_country']['#default_value'] = 'CH';
  $form['server_settings']['clean_url']['#default_value'] = 1;

  $form['site_information']['site_mail']['#default_value'] = 'shockfreezer@gmail.com';
  $form['admin_account']['account']['mail']['#default_value'] = 'shockfreezer@gmail.com';

  $form['admin_account']['account']['name']['#default_value'] = 'admin';
}
